FROM public.ecr.aws/docker/library/amazoncorretto:11
ARG JAR_FILE=target/crud-app-*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]