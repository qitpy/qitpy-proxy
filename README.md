# How to renew SSL cert
just run the file `ssl-update-crontab.sh`

---

__when start project first time__  
we need to create first cert by:  
    `docker-compose run --rm certbot /opt/certify-init.sh`


then, we set crontab to automatic to review Cert (SSL) by schedule, it's every week in our case:  
`* * * * 6 /bin/sh ssl-update-crontab.sh`