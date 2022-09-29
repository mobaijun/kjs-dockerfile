# syntax=docker/dockerfile:1
# https://docs.docker.com/language/java/build-images/
FROM eclipse-temurin:11-jdk-jammy

MAINTAINER <mobaijun8@163.com>mobaijun

VOLUME /usr/local/codegen

ARG JAR_FILE

ADD ${JAR_FILE} ${JAR_FILE}

ENTRYPOINT ["java","-Xms256m","-Xmx512m","-XX:PermSize=128M","-XX:MaxPermSize=256M","-jar","codegen.jar"]