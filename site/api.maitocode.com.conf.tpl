server {
    listen ${NGINX_LISTEN_PORT};
    server_name api.maitocode.com localhost;

    location / {
        uwsgi_pass              src:${API_SERVICE_PORT};
        include                 /etc/nginx/uwsgi_params;
        client_max_body_size    10M;
    }
}