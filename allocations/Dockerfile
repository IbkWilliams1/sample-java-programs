# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven project files to the container
COPY allocations/pom.xml /app/pom.xml
COPY allocations/src /app/src

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Build the application using Maven
RUN mvn clean install

# Copy the final JAR file to the container
COPY allocations/target/allocations-*.jar /app/allocations.jar

# Expose the port the application listens on (change if necessary)
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "/app/allocations.jar"]
