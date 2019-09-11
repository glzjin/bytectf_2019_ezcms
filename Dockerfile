FROM php:7.3-apache

LABEL Author="glzjin <i@zhaoj.in>" Blog="https://www.zhaoj.in"

COPY ./files /tmp/
RUN cp -rf /tmp/html/ /var/www/ && \
    mkdir /var/www/html/sandbox && \
    chown -R root:root /var/www/html && \
    chmod -R 755 /var/www/html && \
    chown -R www-data:www-data /var/www/html/sandbox && \
    echo 'glzjin_wants_a_girl_firend' >> /var/www/html/sandbox/index.html

CMD sh -c "echo $FLAG > /flag && export FLAG=not_flag && FLAG=not_flag && apache2-foreground"
