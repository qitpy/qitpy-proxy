FROM nginxinc/nginx-unprivileged:1-alpine
LABEL maintainer="maitocode.com"

COPY ./site/api.maitocode.com.conf /etc/nginx/conf.d/api.maitocode.com.conf
# COPY ./site/www.maitocode.com.conf /etc/nginx/conf.d/www.maitocode.com.conf
COPY ./uwsgi_params /etc/nginx/uwsgi_params
COPY ./run.sh /run.sh

USER root

RUN chmod +x /run.sh

USER nginx

CMD ["/run.sh"]