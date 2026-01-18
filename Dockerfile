# Stage 1
FROM maven:3.8.3-openjdk-17 AS builder


WORKDIR /app

COPY . .

RUN mvn clean install -DskipTests=true


# Stage 2
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY --from=builder /app/target/*.jar /app/target/expenseapp.jar


CMD ["java","-jar","/app/target/expenseapp.jar"]