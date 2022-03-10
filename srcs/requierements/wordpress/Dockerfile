FROM debian:buster
#FROM php:fpm-alpine

RUN apt-get update -yq \
&& apt-get upgrade -y \
#&& apt-get install -y apache2 php7.3 libapache2-mod-php7.3 php7.3-common php7.3-mbstring php7.3-xmlrpc php7.3-soap php7.3-gd php7.3-xml php7.3-intl php7.3-mysql php7.3-cli php7.3-ldap php7.3-zip php7.3-curl
&& apt-get install php php-fpm php-mysql -y

WORKDIR /var/www/html

#RUN mkdir -p /var/www/html/wordpress
#COPY /home/ivloisy/data/wordpress/* /var/www/html/wordpress/
COPY ./conf/ivloisy.42.fr.conf /etc/php/7.3/fpm/pool.d
#COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
#COPY ./conf/index.php /var/www/html/
#RUN chmod -R 777 /var/www/html/wp/index.php

RUN mkdir -p /run/php && mkdir /var/log/php7.3-fpm



#CMD [ "php-fpm7.3", "-F;"]

EXPOSE 9000

#CMD [ "php-fpm7.3", "-D;" ]
CMD [ "tail", "-f"; "/dev/null;" ]
#RUN docker-php-ext-install pdo_mysql
#CMD ["php-fpm"]
#EXPOSE 9000
