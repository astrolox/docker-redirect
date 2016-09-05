#!/bin/sh

# vi: set ts=4 ff=unix :

set -e

envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

/usr/sbin/nginx -t
exec /usr/sbin/nginx -g "daemon off;"

