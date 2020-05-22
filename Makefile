up:
	docker-compose up -d

down:
	docker-compose down

delete
	docker-compose down --rmi all --volumes

bash:
	docker-compose exec redmine bash
