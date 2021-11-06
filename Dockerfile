FROM maven:3.8.2-jdk-8

WORKDIR /app
COPY . .
RUN mvn clean install

CMD mvn spring-boot:run

#RUN mvn -B package --file pom.xml