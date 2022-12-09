# Docker database with GUI

## Run Container Database
### First time
docker-compose up -d
docker-compose -p projectname up -d
docker-compose --env-file .env.test p -d
### Start/Stop
docker-compose start
docker-compose start db
docker-compose start gui

