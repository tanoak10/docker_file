docker run --name postgres16 --privileged \
  -e POSTGRES_PASSWORD=123456 \
  -v /opt/postgres/data:/var/lib/postgresql/data \
  -p 5432:5432 \
  -d postgres:16 \
  -c 'listen_addresses=*'
