FROM httpd:2.4
COPY ./httpd_cors.conf /usr/local/apache2/conf/httpd.conf