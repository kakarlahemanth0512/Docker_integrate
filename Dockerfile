FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2

WORKDIR /var/www/html

COPY sample.html .

RUN mv /var/www/html/sample.html /var/www/html/sample.html

EXPOSE 80

CMD [ "apache2ctl", "-D", "FOREGROUND"]