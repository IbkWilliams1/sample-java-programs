# Use a lightweight OpenJDK image as the base
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/memoryref.jar memoryref.jar

# Expose a default port if the application listens to one (adjust if necessary)
EXPOSE 8080

# Command to run the Java agent
CMD ["java", "-javaagent:memoryref.jar", "-jar", "memoryref.jar"]
