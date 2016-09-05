#!/bin/sh
set -e

envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

/usr/sbin/nginx -t
exec /usr/sbin/nginx -g "daemon off;"

