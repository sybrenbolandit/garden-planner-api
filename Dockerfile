FROM openjdk:8u171-alpine3.7
RUN apk --no-cache add curl=7.61.1-r3
COPY webapp/build/libs/*-all.jar garden-planner-api.jar
CMD ["java", "-jar", "garden-planner-api.jar"]
