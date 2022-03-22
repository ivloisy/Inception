FROM debian:buster

RUN apt-get update -yq \
&& apt-get upgrade -y \
&& apt-get install mariadb-server mariadb-client -y

RUN mkdir -p /var/run/mysqld \
&& chown -R mysql:mysql /var/run/mysqld \
&& chmod 777 /var/run/mysqld \
&& chmod 777 /var/lib/mysql

EXPOSE 3306

COPY ./tools/entrypoint.sh /usr/local/bin/
#COPY ./conf/wordpress.sql /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]

#Command to launch mariadb and enable the database to listen globally

#CMD ["mysqld", "--bind-address=0.0.0.0"]
#CMD tail -f