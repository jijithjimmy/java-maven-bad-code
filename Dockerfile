# Use Java 17 JRE as the base image (optimized for runtime)
FROM eclipse-temurin:17-jre-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the pre-built JAR file from Jenkins workspace to the container
COPY target/java-maven-project-1.0.0.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]

