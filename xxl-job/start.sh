docker run -d \
  --name xxl-job-admin \
  -p 18080:8080 \
  -v /opt/xxl-job/tmp:/data/applogs \
 -e PARAMS="--spring.datasource.url=jdbc:mysql://221.12.12.141:11306/xxljob?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai \
  --spring.datasource.username=xxljob \
  --spring.datasource.password=gsQi7ibMf#Xswl8s \
  --xxl.job.accessToken=ketech" \
  -e "SPRING_PROFILES_ACTIVE=prod" \
  -e XXL_JOB_LOGIN_USERNAME="admin" \
  -e XXL_JOB_LOGIN_PASSWORD="admin123" \
  xuxueli/xxl-job-admin:2.4.0