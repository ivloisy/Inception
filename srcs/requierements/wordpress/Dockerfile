FROM debian:buster

RUN apt-get update -yq \
&& apt-get upgrade -y \
&& apt-get install php php7.3-fpm php-mysql -y

COPY ./conf/ivloisy.42.fr.conf /etc/php/7.3/fpm/pool.d
#COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
#

RUN mkdir -p /run/php && mkdir -p /var/log/php7.3-fpm

#WORKDIR /var/www/html/wordpress
#COPY ./conf/index.php /var/www/html/wordpress
#COPY ./conf/index.php /var/www/html

#CMD [ "php-fpm7.3", "-F;"]

#RUN service php7.3-fpm start

EXPOSE 9000

ENTRYPOINT /usr/sbin/php-fpm7.3 -F
#CMD [ "/usr/sbin/php-fpm7.3", "-F;" ]
#CMD [ "tail", "-f"; "/dev/null;" ]
#RUN docker-php-ext-install pdo_mysql
#CMD ["php-fpm"]
#EXPOSE 9000
