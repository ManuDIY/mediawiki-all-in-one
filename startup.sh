#!/bin/sh
until ls -ld /var/www/mediawiki; do echo "Waiting for volume";sleep 5 ;done
chown -R nginx:nginx /var/www
php-fpm7 -F >/dev/stdout 2>&1 &
nginx -g 'daemon off;'