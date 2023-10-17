FROM maven:3-amazoncorretto-21-al2023

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN mvn install

EXPOSE 8080
ENTRYPOINT ["mvn", "tomcat7:run"]

