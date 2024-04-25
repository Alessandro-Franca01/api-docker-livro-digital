FROM eclipse-temurin:17-jdk-focal

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        git \
        vim \
        htop \
    && apt-get clean

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN chmod -R 777 mvnw
RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]