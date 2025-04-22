docker run  --privileged  -d --name my-nginx \
-p 80:80 \
-v ~/nginx-config/nginx.conf:/etc/nginx/conf.d/default.conf:ro \
-v ~/nginx-config/index.html:/usr/share/nginx/html/index.html:ro \
 nginx:1.25.2
