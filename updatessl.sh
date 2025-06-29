#!/bin/bash
curl -ksv https://127.0.0.1:54322 2>&1 | grep "start date"
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout ssl/nginx-selfsigned.key \
    -out ssl/nginx-selfsigned.crt \
    -subj "/CN=nginx2025"
sudo docker exec nginx2025 nginx -s reload
curl -ksv https://127.0.0.1:54322 2>&1 | grep "start date"
