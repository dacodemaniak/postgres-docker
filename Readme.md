# Docker database with GUI

## Customize Composition
Copy .env.sample and edit it at your convenience

## Run Container Database
### 1 - First time
docker-compose up -d

docker-compose -p projectname up -d

docker-compose --env-file .env.test -d

docker-compose -p projectname --env-file .env.test -d
### 2 - Start/Stop
docker-compose start

docker-compose start db

docker-compose start gui

