# FROM tomcat:9.0.0.M25
# MAINTAINER yasaka "304190793@qq.com"
#设置Java环境变量
# ENV JAVA_OPTS -server -Duser.timezone="Asia/Shanghai"
# COPY TinTong.war ${CATALINA_HOME}/webapps/TinTong.war
# EXPOSE 8080


FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/yun_gym_management-0.0.1-SNAPSHOT.jar"]

