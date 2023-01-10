echo off
docker-compose -p dbpoe-pg-app exec -T db psql -U poe -d dbpoe < sql\data-poe.sql
docker-compose -p dbpoe-pg-app exec -T db psql -U poe -d dbpoe < sql\data-trainee.sql
docker-compose -p dbpoe-pg-app exec -T db psql -U poe -d dbpoe < sql\data-survey.sql
docker-compose -p dbpoe-pg-app exec -T db psql -U poe -d dbpoe < sql\data-question.sql
docker-compose -p dbpoe-pg-app exec -T db psql -U poe -d dbpoe < sql\data-survey_contains_question.sql