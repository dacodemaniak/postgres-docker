echo off
docker-compose -p dbpoe-pg-app exec -T db psql -U poe -d dbpoe < sql\data-poe.sql
docker-compose -p dbpoe-pg-app exec -T db psql -U poe -d dbpoe < sql\data-trainee.sql