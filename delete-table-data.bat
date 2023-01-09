echo off
rem delete-table-data <table-name>
set tablename=%1
docker-compose -p dbpoe-pg-app exec -it db psql -U poe -d dbpoe -c "delete from %tablename%"