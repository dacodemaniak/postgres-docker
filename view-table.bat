echo off
rem view-table <table-name>
set tablename=%1
docker-compose -p dbpoe exec -it db psql -U poe -d dbpoe -c "select * from %tablename%"