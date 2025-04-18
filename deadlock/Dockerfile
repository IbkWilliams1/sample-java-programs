# Use an official Maven image to build the application
FROM maven:3.8.5-eclipse-temurin-11 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Build the application and create the JAR file
RUN mvn clean package

# Use a minimal Java runtime image to run the application
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the Maven build stage
COPY --from=build /app/target/deadlock.jar /app/deadlock.jar

# Set the command to run the application
CMD ["java", "-jar", "deadlock.jar"]
