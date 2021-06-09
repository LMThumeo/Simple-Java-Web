FROM maven:3.3.9-jdk-8-alpine
COPY . .
RUN mvn package
ENTRYPOINT ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar" ]