#!/bin/sh

if [ -d "/var/lib/mysql/$MYSQL_DATABASE" ]

then 
	echo "Database already exists"
    mysqld_safe

else
    mysql_install_db
# --user=mysql --basedir=/usr --datadir=/var/lib/mysql
    mysqld --init-file="/tmp/init.sql"
#mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"

#mysqld_safe
#/usr/bin/mysqld_safe --user=mysql --datadir='/var/lib/mysql'
fi

exec "$@"
