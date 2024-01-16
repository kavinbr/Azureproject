FROM eclipse-temurin:17-jre as builder
WORKDIR = application
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} application.jar
ENV JAVA_OPTS="-Xms375m -Xmx512m"
ENTRYPOINT ["java","-jar","application.jar"]