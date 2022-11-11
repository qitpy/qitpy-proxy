# server {
#     listen {NGINX_LISTEN_PORT};
#     server_name maitocode.com www.maitocode.com localhost;

#     location / {
#         proxy_pass              http://maitocode:${MAITOCODE_PORT}};
#         proxy_set_header        Host $host;
#     }
# }