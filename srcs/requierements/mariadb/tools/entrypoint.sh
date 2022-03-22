#!/bin/sh

# mysql_install_db

# service mysql start

# if [ -d "/var/lib/mysql/$MYSQL_DATABASE" ]
# then 
# 	echo "Database already exists"

# else

# 	mysql_secure_installation <<_EOF_
# Y
# root
# root
# Y
# Y
# Y
# Y
# _EOF_

# 	echo "GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; FLUSH PRIVILEGES;" | mysql -u root
# 	echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE; GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD'; FLUSH PRIVILEGES;" | mysql -u root

# #mysql -u root -p $MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < wordpress.sql
# #mysqldump database name > databasebackup.sql

# fi

# #/etc/init.d/mysql stop

# exec "$@"
# mysql_install_db
# #service mysql start
# /etc/init.d/mysql start
# mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
# # mysql -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${WP_USER_PASSWORD}';"
# # mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
# # mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
# # #mysql -e "INSERT INTO ${MYSQL_DATABASE}.wp_users (user_login,user_pass,user_nicename,user_email,user_url,user_registered,user_activation_key,user_status,display_name) VALUES ('${WP_USER}',MD5('${WP_USER_PASSWORD}'),'${WP_USER}','${WP_USER}@42.fr','https://${DOMAIN_NAME}','2021-10-27','',0,'${WP_USER}');"
# # mysql -e "FLUSH PRIVILEGES;"
# exec "$@"

mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
/usr/bin/mysqld_safe --user=mysql --datadir='/var/lib/mysql'
