# Описание команд для запуска контейнера с backend-сервером
### Конфигурация Dockerfile
**# Использование официального образа в качестве основы:**  
FROM python:latest  
**# Отправка выходных данных в терминал без буферизации:**  
ENV PYTHONUNBUFFERED 1  
**# Определение файла настроек Django проекта:**  
ENV DJANGO_SETTINGS_MODULE stocks_products.settings  
**# Определение рабочей директории, откуда выполняются команды внутри
контейнера:**  
WORKDIR /app  
**# Скопировать содержимое текущей директории в папку app внутри контейнера:**  
COPY . /app  
**# Запустить команду внутри контейнера, установка зависимостей:**  
RUN pip install --no-cache-dir -r requirements.txt  
**# Предоставить порт 8000 для прослушивания:**  
EXPOSE 8000  
**# Провести миграции Django приложения внутри контейнера:**  
RUN python3 manage.py migrate  
**# Выполнить запуск сервера внутри контейнера:**  
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

### Создание образа  
docker build -t stocks_products .
### Запуск контейнера  
docker run -p 8000:8000 stocks_products
