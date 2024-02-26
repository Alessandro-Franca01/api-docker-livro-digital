FROM eclipse-temurin:17-jdk-focal

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        git \
        vim \
        htop \
    && apt-get clean

WORKDIR /app

# TODO: DEPOIS TESTAR PARA VER SE FUNCIONA SEM ESSES COMANDOS COPY
COPY ./api/mvn/ .mvn
COPY ./api/mvnw ./api/pom.xml ./api/
RUN ./api/mvnw dependency:go-offline

COPY ./api/src ./src

CMD ["./mvnw", "spring-boot:run"]