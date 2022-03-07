FROM debian:buster

RUN apt-get update -yq \
&& apt-get upgrade -y \
&& apt-get install php php-fpm -y

COPY ./conf/ivloisy.42.fr.conf /etc/php/7.3/fpm/pool.d

RUN mkdir /run/php

WORKDIR /var/www/html

EXPOSE 9000

CMD [ "php-fpm7.3", "-F;" ]
