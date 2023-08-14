FROM python:latest
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
WORKDIR /app
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
COPY . app/
RUN pip install --no-cache-dir -r requirements.txt