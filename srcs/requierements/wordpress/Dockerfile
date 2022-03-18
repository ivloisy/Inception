FROM debian:buster

RUN apt-get update -yq \
&& apt-get upgrade -y \
&& apt-get install php php7.3-fpm php-mysql -y

COPY ./conf/ivloisy.42.fr.conf /etc/php/7.3/fpm/pool.d

RUN mkdir -p /run/php && mkdir -p /var/log/php7.3-fpm

EXPOSE 9000

ENTRYPOINT /usr/sbin/php-fpm7.3 -F
