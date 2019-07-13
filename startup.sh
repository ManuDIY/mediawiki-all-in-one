#!/bin/sh
chown -R nginx:nginx /var/www
php-fpm7 -F &
nginx -g 'daemon off;'