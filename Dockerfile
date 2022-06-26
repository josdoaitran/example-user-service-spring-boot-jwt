FROM maven:3.6.3 AS maven
LABEL MAINTAINER="josdoaitran@gmail.com"

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN mvn package -Dspring.datasource.url=jdbc:mysql://db:3306/user_svc

FROM openjdk:11
EXPOSE 8080/tcp
VOLUME /tmp
ADD ./target/userservice-1.0.1.jar userservice.jar
ENTRYPOINT ["java","-jar","/userservice.jar", "-Dspring.datasource.url=jdbc:mysql://db:3306/user_svc"]