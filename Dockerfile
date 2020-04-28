FROM ubuntu

RUN apt-get update -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

RUN apt-get install -y apache2

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D","FOREGROUND"]

