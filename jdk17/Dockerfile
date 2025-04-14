# 该镜像需要依赖的基础镜像
FROM openjdk:17-alpine

RUN    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
       && apk add ttf-dejavu fontconfig
ENV TZ=Asia/Shanghai
ADD target/ketech-system.jar /app/
# 声明服务运行在8080端口
EXPOSE 8001

ARG JAR_FILE
CMD ["java", "-Dfile.encoding=utf-8", "-Xmx8192m", "-jar","/app/ketech-system.jar"]

# 指定维护者的名字
MAINTAINER kecs
