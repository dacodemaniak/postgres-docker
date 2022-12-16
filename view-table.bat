echo off
rem view-table <table-name>
set tablename=%1
docker-compose -p dbpoemaria exec -it db mysql -u poe -p dbpoe -e "select * from %tablename%" 