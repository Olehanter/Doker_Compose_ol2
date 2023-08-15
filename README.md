## Описание команд для запуска образа с Django приложением  
**Имеется 2 основных файла Docker:** 
- docker-compose.yml - для локальной разработки. Запускает только Django и Postgres;
- docker-compose.prod.yml - для запуска на продакшене. Запускает Django, Postgres, Nginx и Gunicorn. 
Номер порта, для Nginx, указан в самом файле (8888).

**Запуск образа для разработки:**  
docker-compose up -d --build  
**Запуск образа для продакшена:**  
docker-compose -f docker-compose.prod.yml up -d --build  
**Проведение миграций для разработки:**  
docker-compose exec web python3 manage.py migrate --noinput  
**Проведение миграций для продакшена:**  
docker-compose -f docker-compose.prod.yml exec web python3 manage.py migrate --noinput  
**Cбор статических файлов для продакшена:**  
docker-compose -f docker-compose.prod.yml exec web python3 manage.py collectstatic --no-input --clear   
