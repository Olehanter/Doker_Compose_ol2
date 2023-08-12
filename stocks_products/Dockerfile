FROM python:latest
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV DJANGO_SETTINGS_MODULE stocks_products.settings
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
#EXPOSE 8000
#RUN python3 manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]