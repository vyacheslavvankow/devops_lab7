#!/usr/bin/bash
sudo docker stop nginx2025
sudo docker rm nginx2025
sudo docker build -t nginx2025 ./nginx
sudo docker run -d --name nginx2025 -p 54321:80 -p 54322:443 -v $(pwd)/ssl:/etc/ssl:ro --restart unless-stopped nginx-devops
sudo docker ps -a 
curl 127.0.0.1:54321 
sudo docker logs -n 15 nginx2025
