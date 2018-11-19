# FROM tomcat:9.0.0.M25
# MAINTAINER yasaka "304190793@qq.com"
#设置Java环境变量
# ENV JAVA_OPTS -server -Duser.timezone="Asia/Shanghai"
# COPY TinTong.war ${CATALINA_HOME}/webapps/TinTong.war
# EXPOSE 8080


FROM hub.c.163.com/wuxukun/maven-aliyun:3-jdk-8
 
ADD pom.xml /tmp/build/
 
ADD src /tmp/build/src
        #构建应用
RUN cd /tmp/build && mvn clean package \
        #拷贝编译结果到指定目录
        && mv target/*.jar /app.jar \
        #清理编译痕迹
        && cd / && rm -rf /tmp/build
VOLUME /tmp
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]

