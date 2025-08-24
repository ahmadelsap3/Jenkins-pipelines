FROM openjdk:17-jdk
COPY app.jar /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
