FROM openjdk:17
LABEL authors="burakakgun"
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} service-registry.jar
ENTRYPOINT ["java","-jar","/service-registry.jar"]
EXPOSE 8761