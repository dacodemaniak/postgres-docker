echo off
docker-compose -p dbpoemaria stop
docker-compose -p dbpoemaria rm -f
docker volume rm -f maria-dbpoe-data
