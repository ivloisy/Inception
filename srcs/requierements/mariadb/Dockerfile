FROM debian:buster

RUN apt-get update -yq \
&& apt-get upgrade -y \
&& apt-get install mariadb-server mariadb-client -y

RUN mkdir -p /var/run/mysqld \
&& chown -R mysql:mysql /var/run/mysqld \
&& chown -R mysql:mysql /var/lib/mysql
#  \
# && chmod 777 /var/run/mysqld \
# && chmod 777 /var/lib/mysql

RUN     rm -rf /etc/mysql/my.cnf

COPY ./tools/entrypoint.sh /tmp/script/
COPY ./conf/init.sql /tmp/script/
COPY ./conf/my.cnf /etc/mysql/
#COPY ./conf/wordpress.sql /usr/local/bin/
EXPOSE 3306

RUN chown -R mysql:mysql /tmp/script
RUN chown -R mysql:mysql /etc/mysql

USER mysql

ENTRYPOINT ["sh", "/tmp/script/entrypoint.sh"]

#Command to launch mariadb and enable the database to listen globally

#CMD ["mysqld", "--bind-address=0.0.0.0"]
#CMD tail -f