-- Решаем ad hoc задачи
--Задача 1. Время активности объявлений

-- Отсюда city_id 6X8I соответствует Санкт-Петербургу, а также добавлю FJEG, так как это Колпино, которое является Санкт-Петербургом (можно проверить в поисковике, либо же просто на сайте СПб или самого Колпино)

-- Tab: Задача 1
WITH limits AS (
    SELECT  
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY total_area) AS total_area_limit,
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY rooms) AS rooms_limit,
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY balcony) AS balcony_limit,
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY ceiling_height) AS ceiling_height_limit_h,
        PERCENTILE_DISC(0.01) WITHIN GROUP (ORDER BY ceiling_height) AS ceiling_height_limit_l
    FROM real_estate.flats     
),
filtered_id AS(
    SELECT id
    FROM real_estate.flats f
    CROSS JOIN limits l
    WHERE (f.total_area < l.total_area_limit)
    AND ((f.rooms < l.rooms_limit) OR (rooms IS NULL))
    AND (f.balcony < l.balcony_limit OR (balcony IS NULL))
    AND (((f.ceiling_height < l.ceiling_height_limit_h) 
    AND (f.ceiling_height > l.ceiling_height_limit_l))
    OR f.ceiling_height IS NULL) 
),
segmentation_table AS (
	SELECT
		CASE 
			WHEN c.city = 'Санкт-Петербург'
			OR c.city = 'Колпино'
			OR c.city = 'Шушары'
			OR c.city = 'Пушкин'
			OR c.city = 'Парголово'
			THEN 'Санкт-Петербург'
			ELSE 'Ленинградская область'
		END AS region,
		CASE
			WHEN a.days_exposition >= 1 AND a.days_exposition <= 30
			THEN 'до месяца'
			WHEN a.days_exposition >= 31 AND a.days_exposition <= 90
			THEN 'до трех месяцев'
			WHEN a.days_exposition >= 91 AND a.days_exposition <= 180
			THEN 'до полугода'
			WHEN a.days_exposition >= 181
			THEN 'более полугода'
			ELSE 'активная публикация'
		END AS activity_segment,
		f.*,
		a.first_day_exposition,
		a.days_exposition,
		a.last_price,
		a.last_price / f.total_area AS price_per_meter
	FROM real_estate.flats f
	INNER JOIN real_estate.advertisement a ON f.id = a.id
	INNER JOIN real_estate.city c ON f.city_id = c.city_id
	WHERE f.id IN (SELECT * FROM filtered_id)
	AND f.type_id = 'F8EM'
	),
region_totals AS (
	SELECT
    	region,
        COUNT(id) AS total_ads_region
    FROM segmentation_table
    GROUP BY region
)
SELECT
	st.region,
	st.activity_segment,
	COUNT(st.id) AS total_ads,
	ROUND((COUNT(st.id)::FLOAT / rt.total_ads_region)::NUMERIC, 2) AS segment_share,
	ROUND(AVG(st.price_per_meter)::NUMERIC, 2) AS avg_price_per_meter,
	ROUND(AVG(st.total_area)::NUMERIC, 2) AS avg_total_area,
	ROUND(AVG(st.living_area)::NUMERIC, 2) AS avg_living_area,
	ROUND(AVG(st.rooms)::NUMERIC, 2) AS avg_rooms,
	SUM(st.is_apartment) AS total_apartment,
	ROUND((SUM(st.is_apartment)::FLOAT / COUNT(st.is_apartment))::NUMERIC, 4) AS apartment_share,
	SUM(st.open_plan) AS total_open_plan_flats,
	ROUND((SUM(st.open_plan)::FLOAT / COUNT(st.open_plan))::NUMERIC, 4) AS open_plan_flats_share,
	ROUND((MIN(airports_nearest)::FLOAT/1000)::NUMERIC, 2) AS min_way_to_airport_km,
	ROUND((MAX(airports_nearest)::FLOAT/1000)::NUMERIC, 2) AS max_way_to_airport_km
FROM segmentation_table st
INNER JOIN region_totals rt ON st.region = rt.region
GROUP BY st.region, st.activity_segment, rt.total_ads_region
ORDER BY st.region DESC, 
CASE
	WHEN st.activity_segment = 'до месяца' THEN 1
	WHEN st.activity_segment = 'до трех месяцев' THEN 2
    WHEN st.activity_segment = 'до полугода' THEN 3
    WHEN st.activity_segment = 'более полугода' THEN 4
    WHEN st.activity_segment = 'активная публикация' THEN 5
    ELSE 6
END;

-- Задача 2. Сезонность объявлений

-- Tab: Задача 2
WITH limits AS (
    SELECT  
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY total_area) AS total_area_limit,
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY rooms) AS rooms_limit,
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY balcony) AS balcony_limit,
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY ceiling_height) AS ceiling_height_limit_h,
        PERCENTILE_DISC(0.01) WITHIN GROUP (ORDER BY ceiling_height) AS ceiling_height_limit_l
    FROM real_estate.flats     
),
filtered_id AS(
    SELECT id
    FROM real_estate.flats f
    CROSS JOIN limits l
    WHERE (f.total_area < l.total_area_limit)
    AND ((f.rooms < l.rooms_limit) OR (rooms IS NULL))
    AND (f.balcony < l.balcony_limit OR (balcony IS NULL))
    AND (((f.ceiling_height < l.ceiling_height_limit_h) 
    AND (f.ceiling_height > l.ceiling_height_limit_l))
    OR f.ceiling_height IS NULL) 
-- Не совсем понимаю, в чем именно ошибка. Да и это та же фильтрация, что и других (недочет с подзапросами исправил).
-- У нас может какое-либо из значений быть неизвестно, так что точно о то, выброс это или нет, сказать сложно. 
-- А сделано таким образом, чтобы если одна неизвестная из всех значений, а остальные известные, строка тоже бралась.
),
table_with_dates AS (
	SELECT 
		f.*,
		a.last_price,
		a.last_price / f.total_area AS price_per_meter,
		DATE_PART('month', a.first_day_exposition) AS publication_month,
		DATE_PART('month', a.first_day_exposition + COALESCE(a.days_exposition, 0) * INTERVAL '1 day') AS removal_month
	FROM real_estate.flats f 
	INNER JOIN real_estate.advertisement a ON f.id = a.id
	WHERE f.id IN (SELECT * FROM filtered_id)
),
monthly_activity AS (
SELECT
	publication_month AS month,
	COUNT(publication_month) AS publications_count,
	COUNT(removal_month) FILTER(WHERE removal_month = publication_month) AS removals_count,
	ROUND(AVG(price_per_meter)::NUMERIC, 2) AS avg_price_per_meter,
	ROUND(AVG(total_area)::NUMERIC, 2) AS avg_total_area
FROM table_with_dates
GROUP BY publication_month
ORDER BY publication_month
)
SELECT
	month,
	CASE
		WHEN month = 1 THEN 'Январь'
		WHEN month = 2 THEN 'Февраль'
		WHEN month = 3 THEN 'Март'
		WHEN month = 4 THEN 'Апрель'
		WHEN month = 5 THEN 'Май'
		WHEN month = 6 THEN 'Июнь'
		WHEN month = 7 THEN 'Июль'
		WHEN month = 8 THEN 'Август'
		WHEN month = 9 THEN 'Сентябрь'
		WHEN month = 10 THEN 'Октябрь'
		WHEN month = 11 THEN 'Ноябрь'
		WHEN month = 12 THEN 'Декабрь'
	END AS month_name,
	publications_count,
	removals_count,
	avg_price_per_meter,
	avg_total_area,
	DENSE_RANK() OVER(ORDER BY publications_count DESC) AS publication_rank,
	DENSE_RANK() OVER(ORDER BY removals_count DESC) AS removal_rank
FROM monthly_activity
ORDER BY month;

-- Задача 3. Анализ рынка недвижимости Ленобласти
-- Топ-15

-- Tab: Задача 3
WITH limits AS (
    SELECT  
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY total_area) AS total_area_limit,
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY rooms) AS rooms_limit,
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY balcony) AS balcony_limit,
        PERCENTILE_DISC(0.99) WITHIN GROUP (ORDER BY ceiling_height) AS ceiling_height_limit_h,
        PERCENTILE_DISC(0.01) WITHIN GROUP (ORDER BY ceiling_height) AS ceiling_height_limit_l
    FROM real_estate.flats     
),
filtered_id AS(
    SELECT id
    FROM real_estate.flats f
    CROSS JOIN limits l
    WHERE (f.total_area < l.total_area_limit)
    AND ((f.rooms < l.rooms_limit) OR (rooms IS NULL))
    AND (f.balcony < l.balcony_limit OR (balcony IS NULL))
    AND (((f.ceiling_height < l.ceiling_height_limit_h) 
    AND (f.ceiling_height > l.ceiling_height_limit_l))
    OR f.ceiling_height IS NULL) 
),
region_table AS (
	SELECT
		CASE 
			WHEN c.city = 'Санкт-Петербург'
			OR c.city = 'Колпино'
			OR c.city = 'Шушары'
			OR c.city = 'Пушкин'
			OR c.city = 'Парголово'
			THEN 'Санкт-Петербург'
			ELSE 'Ленинградская область'
		END AS region,
		f.*,
		c.city,
		a.first_day_exposition,
		a.days_exposition,
		a.last_price,
		a.last_price / f.total_area AS price_per_meter
	FROM real_estate.flats f
	INNER JOIN real_estate.advertisement a ON f.id = a.id
	INNER JOIN real_estate.city c ON f.city_id = c.city_id
	WHERE f.id IN (SELECT * FROM filtered_id)
)
SELECT
	city,
	COUNT(id) AS publications_count,
	SUM(CASE WHEN days_exposition IS NOT NULL THEN 1 ELSE 0 END) AS removals_count,
	ROUND((SUM(CASE WHEN days_exposition IS NOT NULL THEN 1 ELSE 0 END)::FLOAT / COUNT(id))::NUMERIC, 2) AS removals_share,
	ROUND(AVG(price_per_meter)::NUMERIC, 2) AS avg_price_per_meter,
	ROUND(AVG(total_area)::NUMERIC, 2) AS avg_total_area,
	ROUND(AVG(days_exposition)::NUMERIC, 2) AS avg_days_exposition,
	DENSE_RANK() OVER (ORDER BY AVG(days_exposition) ASC) AS speed_rank,
	ROUND(AVG(living_area)::NUMERIC, 2) AS avg_living_area,
	ROUND(AVG(rooms)::NUMERIC, 2) AS avg_rooms
FROM region_table
WHERE region = 'Ленинградская область'
GROUP BY city_id, city
ORDER BY publications_count DESC, removals_count DESC
LIMIT 15;