
#hay que ajustar la hora para que aplique correctamente los updates


#archivo Dockerfile


#crear imagen a partir de archivo dockerfile
#docker build -t web-apache:v1  -f Dockerfile .

FROM php:8.1.7-apache-buster
RUN ln  -snf /usr/share/zoneinfo/America/Monterrey /etc/localtime
#En caso de que se quiera empaquetar el proyecto en un contenedor, copiar los archivos al contenedor
#COPY ./CRUD/ /usr/local/apache2/htdocs/
COPY ./crud-php/  /var/www/html/

RUN apt update && apt upgrade -y
RUN docker-php-ext-install pdo pdo_mysql
EXPOSE 80


FROM mysql
LABEL responsable = "esteban92111@outlook.com"

ENV MYSQL_ROOT_PASSWORD admin
ADD ./crud-php/data/migracion.sql  /docker-entrypoint-initdb.d

EXPOSE 3306