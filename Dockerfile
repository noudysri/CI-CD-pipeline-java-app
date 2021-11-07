FROM openjdk:8-jre-alpine
EXPOSE 8084
WORKDIR /app
COPY target/spring-boot-mysql-0.0.1-SNAPSHOT.jar .
ENTRYPOINT [ "java", "-jar", "spring-boot-mysql-0.0.1-SNAPSHOT.jar" ]
# FROM maven:3.8.2-jdk-8

# WORKDIR /app
# COPY . .
# RUN mvn clean install

# Build Stage for Spring boot application image
# FROM openjdk:8-jdk-alpine as build

# WORKDIR /app
# COPY mvnw .
# COPY .mvn .mvn
# COPY pom.xml .

# RUN chmod +x ./mvnw
# # download the dependency if needed or if the pom file is changed
# RUN ./mvnw dependency:go-offline -B

# COPY src src

# RUN ./mvnw package -DskipTests
# RUN mkdir -p target/dependency && (cd target/dependency; jar -xf ../*.jar)

# Production Stage for Spring boot application image
# FROM openjdk:8-jre-alpine as production
# ARG DEPENDENCY=/app/target/dependency

# # Copy the dependency application file from build stage artifact
# COPY --from=build ${DEPENDENCY}/BOOT-INF/lib /app/lib
# COPY --from=build ${DEPENDENCY}/META-INF /app/META-INF
# COPY --from=build ${DEPENDENCY}/BOOT-INF/classes /app

# # Run the Spring boot application
# ENTRYPOINT ["java", "-cp", "app:app/lib/*","com.example.starter.StaterApplication"]


##########
# FROM maven:3.8.2-jdk-8

# WORKDIR /
# COPY . .
# RUN mvn clean install

# CMD mvn spring-boot:run

#RUN mvn -B package --file pom.xml