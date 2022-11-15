FROM nginx:1.23-alpine
LABEL maintainer="maitocode.com"

COPY ./nginx/* /etc/nginx/
COPY ./run.sh /run.sh

RUN apk add --no-cache openssl bash
RUN chmod +x /run.sh

VOLUME /vol/static
VOLUME /vol/www

CMD ["/run.sh"]