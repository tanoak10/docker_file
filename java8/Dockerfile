FROM alibabadragonwell/dragonwell:dragonwell-8.11.12_jdk8u332-ga

## 创建目录，并使用它作为工作目录
RUN mkdir -p /ketech-module-element-biz
WORKDIR /ketech-module-element-biz
## 将后端项目的 Jar 文件，复制到镜像中
COPY ./target/ketech-module-element-biz.jar app.jar

## 设置 TZ 时区
## 设置 JAVA_OPTS 环境变量，可通过 docker run -e "JAVA_OPTS=" 进行覆盖
ENV TZ=Asia/Shanghai

## 暴露后端项目的 48080 端口
EXPOSE 48083

## 启动后端项目
CMD java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar app.jar
