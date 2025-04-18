# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/base.jar /app/base.jar

# Run the application
CMD ["java", "-jar", "base.jar"]
