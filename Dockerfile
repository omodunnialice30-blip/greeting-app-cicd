FROM maven:3.9.6-eclipse-temurin-17

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn -B -DskipTests clean package

CMD ["java", "-cp", "target/classes", "com.gideon.greet.App"]
