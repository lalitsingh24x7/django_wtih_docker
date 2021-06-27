## Django, docker, nginx and gunicorn with static and media

For production just set DEBUG=False

### Util command
##### 1: Make build and run on deman mode
	docker-compose -f docker-compose.yml up -d --build
	docker-compose up
	
##### 2:  Debug services 
	Nginx
		docker exec -ti nginx bash
	Web
		docker exec -ti web bash
	Database
		docker exec -ti db bash
#####  3: Logs
	Nginx
		docker-compose logs nginx
	Web
		docker-compose logs web
	DB
		docker-compose logs db

#####  4: Rebuild and run detached
	docker-compose up --force-recreate -d

##### 5: Pull from repository and recreate
	docker-compose rm -f
	docker-compose pull
	docker-compose up --build -d
	
##### 6: Check running containter file system
	 docker-compose exec web bash
	
##### 7: Enable shell
	docker-compose exec web python manage.py shell
