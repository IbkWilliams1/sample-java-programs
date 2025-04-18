# Use a Maven image to build the application
FROM maven:3.8.6-eclipse-temurin-17 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and source code to the container
COPY highcpu/pom.xml highcpu/
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn -f highcpu/pom.xml clean package -DskipTests

# Use a lightweight Java runtime image to run the application
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=build /app/highcpu/target/highcpu.jar .

# Expose the application port (update the port if necessary)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "highcpu.jar"]
