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
        <li>1 место в кейс-чемпионате "ProЦифру" в секции "Создание системы автоматизированного анализа соответствия компетенций IT-специалистов требованиям рынка"</li>
      </ul>
    </td>
    <td>
      См. репозиторий проекта
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

  <!-- 4. Стекинг регрессионных моделей с оценкой неопределённости -->
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

  <!-- 5. NLP: прогнозирование заработной платы в логарифмированной шкале -->
  <tr>
    <td>
      <a href="https://github.com/KsyLight/mts-data-analysis-school/blob/main/nn1/neural-networks-1.ipynb">
        Прогнозирования з/п в лог. шкале: дообучение NLP моделей + самописный вариант
      </a>
    </td>
    <td>
      <ul>
        <li>....</li>
        <li>....</li>
      </ul>
    </td>
    <td>
      ....
    </td>
  </tr>

  <!-- 6. CV классификация картинок -->
  <tr>
    <td>
      <a href="https://github.com/KsyLight/mts-data-analysis-school/blob/main/nn2/Neural%20Networks%202.ipynb">
        CV классификация картинок: самописный вариант на PyTorch + дообучение готовых моделей
      </a>
    </td>
    <td>
      <ul>
        <li>....</li>
        <li>....</li>
      </ul>
    </td>
    <td>
      ....
    </td>
  </tr>

    <!-- 7. RAG-pipeline -->
  <tr>
    <td>
      <a href="https://github.com/KsyLight/mts-data-analysis-school/blob/main/nn3/Neural%20Networks%203.ipynb">
        RAG-pipeline по книге "Преступление и наказание" Фёдора Достроевского в формате PDF 
      </a>
    </td>
    <td>
      <ul>
        <li>....</li>
        <li>....</li>
      </ul>
    </td>
    <td>
      ...
    </td>
  </tr>

</table>
