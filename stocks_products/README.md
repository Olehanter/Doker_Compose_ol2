## Описание команд для запуска образа с Django приложением  
**Имеется 2 основных файла Docker:** 
- docker-compose.yml - Локально запускает только Django и Postgres;
- docker-compose.prod.yml - Запуск на продакшене. Запускает Django, Postgres, Nginx и Gunicorn. 

**Запуск образа для разработки:**  
docker-compose up -d --build  
**Запуск образа для продакшена:**  
docker-compose -f docker-compose.prod.yml up -d --build  
** Mиграции для разработки:**  
docker-compose exec web python3 manage.py migrate --noinput  
**Миграции для продакшена:**  
docker-compose -f docker-compose.prod.yml exec web python3 manage.py migrate --noinput  
**Cбор стат.файлов для продакшена:**  
docker-compose -f docker-compose.prod.yml exec web python3 manage.py collectstatic --no-input --clear   
