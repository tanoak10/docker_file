docker run -d --restart=always \
  -p 6668:6379 \
  --name myredis \
  redis:7.2 redis-server --requirepass 123456
