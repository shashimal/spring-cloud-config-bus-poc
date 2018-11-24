FROM maven:3.6.0-jdk-8

RUN apt-get update
RUN apt-get install netcat --assume-yes

WORKDIR /app

COPY ./config-client2/pom.xml ./pom.xml

RUN mvn dependency:go-offline -B

COPY ./config-client2/ /app

RUN mvn -v
RUN mvn clean install -DskipTests

RUN cp ./target/config-client2-0.0.1-SNAPSHOT.jar /opt
RUN cp ./config-client2-entrypoint.sh /opt
RUN chmod 755 /opt/config-client2-entrypoint.sh

EXPOSE 8082

LABEL maintainer=“shashimald@gmail.com”