 docker run --name mysql -p 3306:3306 \
  -v /home/mysql/data:/var/lib/mysql \
  -v /home/mysql/conf:/etc/mysql/conf.d \
  -v /home/mysql/logs:/var/log/mysql \
  -e MYSQL_ROOT_PASSWORD=123456 -d mysql:8.0.29
