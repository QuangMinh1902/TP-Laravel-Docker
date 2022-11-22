#!/bin/sh
export NGINX_SERVERNAME
export BACKEND
cp /tmp/app.template /etc/nginx/conf.d/app.template
envsubst '${NGINX_SERVERNAME} ${BACKEND}' < /etc/nginx/conf.d/app.template > /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
