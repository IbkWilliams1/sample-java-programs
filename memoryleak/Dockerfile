# Use a lightweight OpenJDK image as the base
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/memoryleak.jar app.jar

# Expose a default application port (if applicable)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
