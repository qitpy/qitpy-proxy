#!/bin/sh

set -e

envsubst < /etc/nginx/conf.d/api.maitocode.com.conf.tpl > /etc/nginx/conf.d/api.maitocode.com.conf
envsubst < /etc/nginx/conf.d/www.maitocode.com.conf.tpl > /etc/nginx/conf.d/www.maitocode.com.conf

nginx -g 'daemon off;'