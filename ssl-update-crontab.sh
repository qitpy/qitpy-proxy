#!/bin/sh

set -e

cd /home/ubuntu/maito-proxy/_work/maito-proxy/maito-proxy
/usr/bin/docker-compose run --rm certbot certbot renew
