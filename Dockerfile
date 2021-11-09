FROM maven:3.8.2-jdk-8

WORKDIR /
COPY pom.xml .
RUN mvn clean install

CMD mvn spring-boot:run
RUN mvn -B clean verify
