
FROM ubuntu:latest

RUN apt-get install apache2 nano 

RUN echo "Hello World from Docker image" > /var/www/html/index.html

RUN docker build -t araragiqte/testsite:latest .
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
