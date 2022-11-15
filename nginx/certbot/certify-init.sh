#!/bin/sh

# waits for proxy to be avaiable, then gets the fist certificate

set -e

until nc -z proxy 80; do
    echo "waiting for proxy"
    sleep 5s & wait ${!}
done

echo "getting certificate"

certbot certonly \
    --webroot \
    --webroot-path "/vol/www/" \
    -d "$DOMAIN" \
    --email "$EMAIL"v\
    --rsa-key-size 4096 \
    --agree-tos \
    --noninteractive