# FROM eclipse-temurin:17-jdk-alpine
# RUN apk add curl
# VOLUME /tmp
# EXPOSE 8080
# ADD target/springboot-aws-deploy-service.jar springboot-aws-deploy-service.jar
# ENTRYPOINT ["java","-jar","/springboot-aws-deploy-service.jar"]

FROM eclipse-temurin:17-jdk-alpine

# Install curl
RUN apk add curl

# Create a temporary directory
VOLUME /tmp

# Expose application port
EXPOSE 8080

# Copy jar from build output to container
ADD target/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
