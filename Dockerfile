FROM ubuntu
RUN apt update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install apache2 -y
ADD . /var/www/html
EXPOSE 80
WORKDIR /usr/sbin
CMD ["apachectl", "-D", "FOREGROUND"]
