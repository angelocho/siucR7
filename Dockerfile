FROM amazoncorretto:11-alpine
WORKDIR /opt/app/
COPY ./target/testing-web-complete-0.0.1-SNAPSHOT.jar .
CMD ["java","-jar","testing-web-complete-0.0.1-SNAPSHOT.jar"]
