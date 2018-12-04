FROM tomcat:9.0.0.M25
MAINTAINER yasaka "304190793@qq.com"
#设置Java环境变量
ENV JAVA_OPTS -server -Duser.timezone="Asia/Shanghai"
COPY goodfield.war ${CATALINA_HOME}/webapps/goodfield.war
EXPOSE 8080