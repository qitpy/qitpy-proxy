#!/bin/sh

set -e

cd /home/ubuntu/qitpy-proxy/_work/qitpy-proxy/qitpy-proxy
/usr/bin/docker-compose run --rm certbot certbot renew
