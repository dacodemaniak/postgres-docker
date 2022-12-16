echo off
rem choose db or gui logs by typing:
rem logs db
rem logs gui
docker-compose -p dbpoemaria logs %1
