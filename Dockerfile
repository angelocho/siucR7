FROM amazoncorretto:11-alpine
WORKDIR /opt/app/
COPY ./testing-web-complete-0.0.1-SNAPSHOT.jar .
CMD ["java","-jar","testing-web-complete-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
