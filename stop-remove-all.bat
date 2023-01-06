echo off
docker-compose -p dbpoe-pg-app stop
docker-compose -p dbpoe-pg-app rm -f
docker volume rm -f pg-dbpoe-data
