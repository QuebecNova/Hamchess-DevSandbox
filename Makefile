#!make
.PHONY: install pull

install:
	docker login

	-git clone git@github.com:QuebecNova/Chess-on-React.git frontend
	-git clone git@github.com:QuebecNova/Chess-On-React-Backend.git backend

	touch .env
	docker-compose up -d
	open 'http://hamchess.localhost/'

pull:
	cd api-server-js && git pull origin master
	cd admin-frontend && git pull origin master
	git pull origin master
