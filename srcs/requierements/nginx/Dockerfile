FROM debian:buster

RUN apt-get update -yq \
&& apt-get upgrade -y \
&& apt-get install nginx -y

RUN mkdir -p /var/www/ivloisy.42.fr

COPY ./conf/index.html /var/www/html
#COPY ./conf/nginx.conf /etc/nginx/conf.d
#COPY ./conf/ivloisy.42.fr /etc/nginx/conf.d/nginx.con
COPY ./conf/ivloisy.42.fr /etc/nginx/sites-available
COPY ./conf/ivloisy.42.fr /etc/nginx/sites-enabled

RUN chmod -R 777 /var/www/html/index.html
#RUN chown -R www-data:www-data /var/www/ivloisy.42.fr

CMD [ "nginx", "-g", "daemon off;" ]

EXPOSE 8080
