# Start with base image containing java runtime
FROM java:8u111-jdk-alpine

# Make the port 8080 available to the world outside this container
EXPOSE 8080

ADD target/spring-boot-docker-maven.jar spring-boot-docker-maven.jar

# Run the jar file
ENTRYPOINT ["java", ".jar", "spring-boot-docker-maven.jar"]