# Мои основные проекты

<table>
  <tr>
    <th>Название</th>
    <th>Описание</th>
    <th>Инструменты</th>
  </tr>

  <!-- Кейс-чемпионаты -->
  <tr>
    <td colspan="3" align="center"><strong>Кейс-чемпионаты</strong></td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/KsyLight/cv-analyzer-gazprom-neft">
        Streamlit-приложение для анализа резюме по матрице Альянса ИИ
      </a>
    </td>
    <td>
      <ul>
        <li>Обработано более 700 резюме с разметкой, извлечением текста и созданием словаря компетенций;</li>
        <li>Дообучена модель RoBERTa от Facebook для генерации векторов компетенций;</li>
        <li>Разработано Streamlit-приложение для анализа компетенций по матрице Альянса ИИ;</li>
        <li>Приложение развернуто на арендованном сервере с HTTPS и докеризацией.</li>
        <li>1 место в кейс-чемпионате "ProЦифру" в секции "Создание системы автоматизированного анализа соответствия компетенций IT-специалистов требованиям рынка"</li>li
      </ul>
    </td>
    <td>
      Python, Streamlit, Docker, HTTPS
    </td>
  </tr>

  <!-- Pet-проекты -->
  <tr>
    <td colspan="3" align="center"><strong>Pet-проекты</strong></td>
  </tr>

  <!-- 1. Регрессия стоимости аренды жилья -->
  <tr>
    <td>
      <a href="https://github.com/KsyLight/mts-data-analysis-school/tree/main/ml2">
        Регрессия стоимости аренды жилья (вероятно, данные с Airbnb)
      </a>
    </td>
    <td>
      <ul>
        <li>Логарифмирование целевой переменной, работа с пропусками, извлечение признаков из дат, кодирование категорий;</li>
        <li>Обучение CatBoostRegressor с подбором гиперпараметров через Optuna;</li>
        <li>Оценка моделей по RMSE, MSE, R²; визуализация остатков, анализ важности через SHAP;</li>
        <li>1-е место в конкурсе на Kaggle.</li>
      </ul>
    </td>
    <td>
      Python, Jupyter Notebook, Pandas, CatBoost, Scikit-learn, SHAP, Optuna, Statsmodels
    </td>
  </tr>

  <!-- 2. Классификация мошеннических транзакций -->
  <tr>
    <td>
      <a href="https://github.com/KsyLight/mts-data-analysis-school/tree/main/ml1">
        Классификация мошеннических транзакций
      </a>
    </td>
    <td>
      <ul>
        <li>Извлечение временных признаков, логарифмирование суммы, кодирование категорий;</li>
        <li>CatBoostClassifier с подбором через Optuna, сравнение моделей;</li>
        <li>Оценка по F1-score и logloss; финальная проверка на тесте через сабмит на Kaggle;</li>
        <li>18-е место в соревновании.</li>
      </ul>
    </td>
    <td>
      Python, Pandas, CatBoost, Scikit-learn, SHAP, Optuna
    </td>
  </tr>

  <!-- 3. Стекинг регрессионных моделей с оценкой неопределённости -->
  <tr>
    <td>
      <a href="https://github.com/KsyLight/mts-data-analysis-school/tree/main/ml3">
        Стекинг регрессионных моделей с оценкой неопределённости
      </a>
    </td>
    <td>
      <ul>
        <li>EDA: распределения, выбросы, корреляции, дубли;</li>
        <li>Preprocessing pipeline с ColumnTransformer: извлечение дат, логарифмирование, кодирование, масштабирование;</li>
        <li>Базовые модели (CatBoost, LightGBM, XGBoost, RandomForest, Ridge) + стекинг через мета-модель;</li>
        <li>Расчёт алеаторной, эпистемической и total-неопределённостей; графики ошибки vs доверие;</li>
        <li>Сравнение с одиночной CatBoost-моделью, финальный анализ ошибок и устойчивости.</li>
      </ul>
    </td>
    <td>
      Python, Scikit-learn, CatBoost, LightGBM, XGBoost, Optuna, SHAP
    </td>
  </tr>

  <!-- 4. Исследование недвижимости по данным Яндекс Недвижимости -->
  <tr>
    <td>
      <a href="https://github.com/KsyLight/portfolio/tree/main/real_estate_research">
        Исследование недвижимости по данным Яндекс Недвижимости
      </a>
    </td>
    <td>
      <ul>
        <li>Предобработка и заполнение пропусков моделью на основе линейной регрессии;</li>
        <li>Статистические тесты (бутстреп) по двум гипотезам;</li>
        <li>Построение линейной модели предсказания цены квартиры.</li>
      </ul>
    </td>
    <td>
      Python, Pandas, Matplotlib, Seaborn, Scipy, Sklearn, XGBoost
    </td>
  </tr>

  <!-- 5. Анализ продаж авиабилетов -->
  <tr>
    <td>
      <a href="https://github.com/KsyLight/portfolio/tree/main/analysis_of_airline_ticket_sales">
        Анализ продаж авиабилетов
      </a>
    </td>
    <td>
      <ul>
        <li>Предобработка и первичный анализ;</li>
        <li>Отчёт по выручке, сезонность, топ-10 направлений;</li>
        <li>Статистический тест на разницу выручек между группами клиентов.</li>
      </ul>
    </td>
    <td>
      Python, Pandas, Matplotlib, Seaborn, Scipy
    </td>
  </tr>

  <!-- Яндекс Практикум -->
  <tr>
    <td colspan="3" align="center"><strong>Яндекс Практикум</strong></td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/KsyLight/portfolio/tree/main/catering_research_project">
        Исследовательский проект в сфере общественного питания Москвы
      </a>
    </td>
    <td>
      <ul>
        <li>Предобработка и анализ данных;</li>
        <li>Исследование ключевых вопросов рынка;</li>
        <li>Выводы и рекомендации.</li>
      </ul>
    </td>
    <td>
      Python, Pandas, Matplotlib, Seaborn
    </td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/KsyLight/portfolio/tree/main/startup_research">
        Исследование стартапов
      </a>
    </td>
    <td>
      <ul>
        <li>Очистка данных, категоризация, объединение наборов;</li>
        <li>Анализ выбросов, раундов финансирования и бесплатных покупок;</li>
      </ul>
    </td>
    <td>
      Python, Pandas, Matplotlib, Seaborn
    </td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/KsyLight/portfolio/tree/main/data_processing_secrets_of_the_darkwood">
        Обработка данных для игры "Секреты Темнолесья"
      </a>
    </td>
    <td>
      <ul>
        <li>Исправление пропусков и дубликатов;</li>
        <li>Фильтрация и категоризация по оценкам.</li>
      </ul>
    </td>
    <td>
      Python, Pandas
    </td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/KsyLight/portfolio/tree/main/data_analysis_for_a_real_estate_agency">
        Анализ данных для агентства недвижимости
      </a>
    </td>
    <td>
      <ul>
        <li>3 ad hoc запроса на PostgreSQL с оконными функциями и CTE;</li>
        <li>Исследование рынка СПб и ЛО, исследовательский комментарий.</li>
      </ul>
    </td>
    <td>
      SQL (PostgreSQL), DBeaver
    </td>
  </tr>
  <tr>
    <td>
      <a href="https://datalens.yandex/3ig5p12ll8usq">TED-Talks</a>
    </td>
    <td>Дашборд</td>
    <td>Yandex DataLens</td>
  </tr>
  <tr>
    <td>
      <a href="https://datalens.yandex/gw2pc410d63i3">Аналитика недвижимости</a>
    </td>
    <td>Дашборд</td>
    <td>Yandex DataLens</td>
  </tr>
</table>
