echo off
docker-compose -p dbpoe stop
docker-compose -p dbpoe rm -f
docker volume rm -f pg-dbpoe-data
