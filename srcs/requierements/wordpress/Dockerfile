FROM debian:buster

RUN apt-get update -yq \
&& apt-get upgrade -y \
&& apt-get install php php7.3-fpm php-mysql -y
RUN apt-get install  wget -y
RUN apt-get install mariadb-client -y

COPY ./conf/ivloisy.42.fr.conf /etc/php/7.3/fpm/pool.d
COPY ./tools/entrypoint.sh /usr/local/bin

RUN mkdir -p /run/php && mkdir -p /var/log/php7.3-fpm

ENTRYPOINT ["entrypoint.sh"]

WORKDIR /var/www/html/

EXPOSE 9000

CMD /usr/sbin/php-fpm7.3 -F
