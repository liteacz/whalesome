#!/bin/sh

[ -z "${NGINX_PROCESS_USER}" ] && NGINX_PROCESS_USER="www-data"

replace_content="user ${NGINX_PROCESS_USER} ${NGINX_PROCESS_USER};"

sed -i \
    -e "s~\# litea.nginx.placeholders.process_user~${replace_content}~g" \
    /etc/nginx/nginx.conf
