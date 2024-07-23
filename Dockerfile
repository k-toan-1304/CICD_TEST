# Start with a base image containing Java runtime
FROM amazoncorretto:17-alpine-jdk as build
#FROM gradle:latest AS TEMP_BUILD_IMAGE
# Create a directory
WORKDIR /app

# Copy all the files from the current directory to the image
COPY . .

ARG PG_URL

# build the project avoiding tests
RUN ./gradlew clean build -x test

# Expose port 8081
EXPOSE 8081

#COPY --from=TEMP_BUILD_IMAGE /app/build/libs/demo-0.0.1-SNAPSHOT.jar /demo-0.0.1-SNAPSHOT.jar.jar

# Run the jar file
CMD ["java", "-jar", "./build/libs/demo-0.0.1-SNAPSHOT.jar"]