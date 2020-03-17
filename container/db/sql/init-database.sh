#!/usr/bin/env bash
#wait for the MySQL Server to come up
#sleep 90s

#run the setup script to create the DB and the schema in the DB
#mysql -u root -pdevuser database < "/docker-entrypoint-initdb.d/initialize.sql"

mysql --defaults-extra-file=/etc/mysql/conf.d/my.conf TestDatabase < "/docker-entrypoint-initdb.d/SampleTable_create.sql"