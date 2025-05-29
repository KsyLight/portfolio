# Мои основные проекты

<table>
  <tr>
    <th>Название</th>
    <th>Описание</th>
    <th>Инструменты</th>
  </tr>
  <tr>
    <td colspan="3" align="center"><strong>Кейс-чемпионаты</strong></td>
  </tr>
<tr>
  <td>
    <a href="https://github.com/KsyLight/cv-analyzer-gazprom-neft">
      Streamlit‑приложение для анализа резюме по матрице Альянса ИИ
    </a>
  </td>
  <td>
    <ul>
      <li>Обработано более 700 резюме с разметкой, извлечением текста и созданием словаря компетенций;</li>
      <li>Дообучена модель RoBERTa от Facebook для генерации векторов компетенций;</li>
      <li>Разработано Streamlit‑приложение для анализа компетенций по матрице Альянса ИИ;</li>
      <li>Приложение развернуто на арендованном сервере с HTTPS и докеризацией.</li>
    </ul>
  </td>
  <td>Можно посмотреть в <a href="https://github.com/KsyLight/cv-analyzer-gazprom-neft">репозитории проекта</a></td>
</tr>
  <tr>
    <td colspan="3" align="center"><strong>Pet-проекты</strong></td>
  </tr>
  <tr>
    <td><a href="https://github.com/KsyLight/portfolio/tree/main/real_estate_research">Исследование недвижимости по данным Яндекс Недвижимости</td>
    <td>
       <ul>
        <li>Проведена предобработка данных и предварительный анализ (для заполнения пропусков построена предсказательная модель на основе линейной регрессии);</li>
        <li>Проведено исследование рынка недвижимости по данным с Яндекс Недвижимости, уже подготовленным ранее;</li>
        <li>Проведены статистические тесты по двум различным гипотезам (бутстреп);</li>
        <li>Построены предсказательные модели цены крвартиры на основе линейной регрессии.</li>
      </ul>
    </td>
    <td>Python, Jupyter Notebook, Pandas, Numpy, Matplotlib, Seaborn, XGBoost, Scipy, Sklearn, JobLib, Datetime, wbdata, pandas.api.types</td>
  </tr>
    <tr>
    <td><a href="https://github.com/KsyLight/portfolio/tree/main/analysis_of_airline_ticket_sales">Анализ продаж авиабилетов</td>
    <td>
       <ul>
        <li>Проведена предобработка данных и предварительный анализ;</li>
        <li>Проведено исследование: создан отчёт о выручке, исследованы выручка и сезонность продаж, а также связи и зависимости в данных, определены топ-10 направлений перелётов и так далее;</li>
        <li>Проведены статистические тесты по гипотезе: "выручка от продажи билетов для этих двух групп клиентов (группы, которые покупают билеты в разное время) отличается."</li>
      </ul>
    </td>
    <td>Python, Jupyter Notebook, Pandas, Matplotlib, Seaborn, Numpy, Scipy</td>
<tr>
<tr>
  <td><a href="https://github.com/KsyLight/mts-data-analysis-school/tree/main/ml1">Классификация мошеннических транзакций</a></td>
  <td>
    <ul>
      <li>Проведена комплексная предобработка данных: извлечены признаки времени, логарифмирована сумма транзакции, закодированы категориальные признаки;</li>
      <li>Обучены и сравнивались различные модели, все сделаны на CatBoost (CatBoostClassifier), произведён подбор гиперпараметров с помозью Optuna;</li>
      <li>Оценка производилась по метрике F1-score, а также логарифмической функции потерь (logloss);</li>
      <li>Финальная проверка модели осуществлялась на тестовой выборке через сабмит на Kaggle. Заняла 18 место на <a href="https://www.kaggle.com/competitions/teta-ml-1-2025/leaderboard">соревновании.</li>
    </ul>
  </td>
  <td>Python, Jupyter Notebook, Pandas, CatBoost, Scikit-learn, SHAP, Matplotlib, Seaborn, Optuna, Phik</td>
</tr>
<tr>
  <td><a href="https://github.com/KsyLight/mts-data-analysis-school/tree/main/ml2">Регрессия стоимости аренды жилья (вероятно, данные с Airbnb)</a></td>
  <td>
    <ul>
      <li>Проведена всесторонняя предобработка данных: логарифмирована целевая переменная, обработаны пропуски, извлечены признаки из даты, закодированы категориальные переменные;</li>
      <li>Обучены и протестированы несколько моделей, все на CatBoost (CatBoostRegressor), проведён подбор гиперпараметров с использованием Optuna;</li>
      <li>Модель оценивалась по метрикам RMSE, MSE и R²; выполнена визуализация остатков, ошибок и предсказаний, а также анализ важности признаков через SHAP;</li>
      <li>Финальная модель отправлена на Kaggle, где заняла 1 место в <a href="https://www.kaggle.com/competitions/teta-ml-2-2025/leaderboard">соревновании.</li>
    </ul>
  </td>
  <td>Python, Jupyter Notebook, Pandas, CatBoost, Scikit-learn, SHAP, Matplotlib, Seaborn, Optuna, Phik, Statsmodels</td>
</tr>
        <tr>
  <td><a href="https://github.com/KsyLight/mts-data-analysis-school/tree/main/ml3">Стекинг регрессионных моделей с оценкой неопределённости</a></td>
  <td>
    <ul>
      <li>Проведён полный EDA-анализ: визуализированы распределения признаков, выбросы, пропуски, проведен корреляционный анализ; выявлены дублирующие/избыточные признаки;</li>
      <li>Реализована функция предобработки: извлечение даты, логарифмирование числовых признаков, кодирование категориальных переменных, масштабирование и заполнение пропусков через Pipelines и ColumnTransformer;</li>
      <li>Обучены 5 базовых моделей: CatBoost, LightGBM, XGBoost, RandomForest, Ridge, с кросс-валидацией по KFold (K=5), с применением стекинга через мета-модель CatBoost;</li>
      <li>Выполнена оценка неопределённостей: рассчитаны алеаторная, эпистемическая и суммарная (total) неопределённости, построены графики зависимости ошибки от доверия модели;</li>
      <li>Для лучшей модели проведён финальный анализ ошибок, предсказаний и устойчивости, сравнение с простой CatBoost-моделью, обученной через Optuna (которая показала лучшие метрики);</li>
      <li>Финальные предсказания проверены с помощью таргета для теста в лице датасета solution.</li>
    </ul>
  </td>
  <td>Python, Jupyter Notebook, Pandas, Numpy, SciPy, CatBoost, LightGBM, XGBoost, Scikit-Learn, Missingno, Matplotlib, Seaborn, Optuna, Phik</td>
</tr>
 <tr>
    <td colspan="3" align="center"><strong>Яндекс Практикум</strong></td>
  </tr>
  <tr>
    <td><a href="https://github.com/KsyLight/portfolio/tree/main/catering_research_project">Исследовательский проект в сфере общественного питания Москвы</td>
    <td>
       <ul>
        <li>Проведена предобработка данных и предварительный анализ;</li>
        <li>Проведено исследование по различным вопросам;</li>
        <li>Сделаны выводы и даны рекомендации.</li>
      </ul>
    </td>
    <td>Python, Jupyter Notebook, Pandas, Numpy, Matplotlib, Seaborn, Phik</td>
  </tr>
  <tr>
    <td><a href="https://github.com/KsyLight/portfolio/tree/main/startup_research">Исследование стартапов</td>
    <td>
      <ul>
        <li>Проведена предобработка данных: найдены и исправлены пропуски и некорректные типы данных, а также дубликаты или ошибки в чтении датасетов;</li>
        <li>Проведено предварительное исследование (в том числе для одного из пунктов проведена категоризация, а также проверена возможность объединения датасетов по конкретным столбцам), а также датасет разделен на 2 других для более корректного отображения и чтения данных (причины такого решения описаны в работе);</li>
        <li>Сделано непосредственное исследование: анализ выбросов, анализ того, куплены ли стартапы бесплатно, стартапы разделены по ценовым категориям, анализ того, сколько раундов продержится стартап перед покупкой.</li>
      </ul>
    </td>
    <td>Python, Jupyter Notebook, Pandas, NumPy, Matplotlib, Matplotlib_Venn, Seaborn, Missingno, Pandas_Datareader, IPython, Datetime</td>
  </tr>
  <tr>
    <td><a href="https://github.com/KsyLight/portfolio/tree/main/data_processing_secrets_of_the_darkwood">Обработка данных для команды игры "Секреты Темнолесья</td>
    <td>
       <ul>
        <li>Проведена предобработка данных: найдены и исправлены пропуски и некорректные типы данных, а также дубликаты;</li>
        <li>Проведена фильрация данных = получен новый срез;</li>
        <li>Произведена категоризация по оценкам пользователей и по оценкам критиков.</li>
      </ul>
    </td>
    <td>Python, Jupyter Notebook, Pandas</td>
  </tr>
  <tr>
    <td><a href="https://github.com/KsyLight/portfolio/tree/main/data_analysis_for_a_real_estate_agency">Анализ данных для агентства недвижимости</td>
    <td>
       <ul>
        <li>Решены 3 ad hoc задачи в виде запросов на PostgreSQL;</li>
        <li>По результатам подзапросов проведено исследование по рынку недвижимости Санкт-Петербурга и Ленинградской оласти;</li>
        <li>Всего в результате 3 запроса с использованием оконных функций, CTE и подзапросов, а также исследвательский комментарий.</li>
      </ul>
    </td>
    <td>SQL (PostgreSQL), DBeaver</td>
  </tr>
  <tr>
    <td><a href="https://datalens.yandex/3ig5p12ll8usq">TED-Talks</td>
    <td>Дашборд</td>
    <td>Yandex DataLens</td>
  </tr>
  <tr>
    <td><a href="https://datalens.yandex/gw2pc410d63i3">Аналитика недвижимости</td>
    <td>Дашборд</td>
    <td>Yandex DataLens</td>
  </tr>
</table>
