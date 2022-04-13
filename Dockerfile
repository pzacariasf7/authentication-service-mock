FROM openjdk:8-jdk-alpine

EXPOSE 7000

ARG JAR_FILE=build/libs/authentication-service-mock-1.0-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

ENV ISSUER=http://authentication-service-mock:7000

ENTRYPOINT ["java","-jar","/app.jar"]