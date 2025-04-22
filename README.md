# docker_file
docker 安装

docker离线包地址
https://download.docker.com/linux/

1. 解压缩
```bash
tar -zxvf [docker].tgz
mv ./docker/* /usr/local/bin

```

2. /etc/systemd/system/docker.service
```bash 
[Unit]
Description=Docker Application Container Engine
Documentation=https://docs.docker.com
After=network-online.target firewalld.service
Wants=network-online.target

[Service]
Type=notify
ExecStart=/local/bin/dockerd --default-ulimit nofile=65535:65535
ExecReload=/bin/kill -s HUP $MAINPID
TimeoutStartSec=0
RestartSec=2
Restart=always
StartLimitBurst=3
StartLimitInterval=60s
LimitNOFILE=infinity
LimitNPROC=infinity
LimitCORE=infinity
Delegate=yes
KillMode=process

[Install]
WantedBy=multi-user.target

```