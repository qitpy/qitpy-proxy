FROM nginx:1.25.2-alpine
LABEL maintainer="qitpy.com"

COPY ./nginx/* /etc/nginx/
COPY ./run.sh /run.sh

RUN apk add --no-cache openssl bash
RUN chmod +x /run.sh

VOLUME /vol/static
VOLUME /vol/www

CMD ["/run.sh"]