# How to renew SSL cert
run the file `ssl-update-crontab.sh`

init ssl:  
`docker-compose run --rm certbot /opt/certify-init.sh`

or crontab setup:
- `* * * * 6 /bin/sh ssl-update-crontab.sh`