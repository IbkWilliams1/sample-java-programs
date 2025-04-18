# Stage 1: Build the application
FROM maven:3.8.5-eclipse-temurin-11 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy only the module-specific files
ARG module
COPY $module/pom.xml ./pom.xml
COPY $module/src ./src

# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Package the application in a lightweight runtime
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/*.jar ./app.jar

# Expose the application port (if applicable)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
