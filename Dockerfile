FROM openjdk:8u171-alpine3.7
RUN apk --no-cache add curl
COPY webapp/build/libs/*-all.jar garden-planner-api.jar
CMD java ${JAVA_OPTS} -jar garden-planner-api.jar
