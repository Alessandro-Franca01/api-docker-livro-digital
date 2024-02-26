# README

# Setup Docker: API para Livro dos Inspetores

Automatização de app para ambiente de desenvolvimento

## 🚀 Começando

Primeira versão usando o docker-compose

### 📋 Pré-requisitos

- Docker (Ultima versão)
- Docker-compose (Ultima versão)
- Portainer (Instalação Opcional)

### 🔧 Instalação em ambiente de desenvolvimento

Fazer o clone desse projeto:

```
git clone <repo>
```

Ir para o diretorio raiz do projeto clonado

```
cd api-docker-livro-digital
```
Fazer o clone do projeto da API do Livro Digital <br>
Link: https://github.com/Alessandro-Franca01/API-Livro-de-Inspetores

```
git clone <repo>
```

Renomar projeto da api

```
 mv .\API-Livro-de-Inspetores\ api
```

Mover o Dockerfile para a api 

```
mv ./Dockerfile ./api
```

Alterar o valor perfil no arquivo "application.properties" para "test"
<br> Relative Path:

```
api\src\main\resources
```

Voltar para pasta raiz onde esta o docker-compose e subir os containers

```
cd ..
```

```
docker compose up
```

## ⚡ Conectando com o banco de dados
Add variaveis de ambiente no arquivo "application-dev.properties"

EXEMPLOS DOS DADOS DE ACESSO:

### DATA BASE DOCKER CONTAINER
spring.datasource.url=jdbc:postgresql://postgres:5432/postgres  <br>
spring.datasource.username=postgres  <br>
spring.datasource.password=root

### DATA BASE HOST MACHINE
spring.datasource.url=jdbc:postgresql://host.docker.internal:2022/postgres <br>
spring.datasource.username=postgres <br>
spring.datasource.password=root

### Configurando perfil para "dev"
Depois de configurado o banco, 
Alterar o valor perfil no arquivo "application.properties" para "dev"

### OBS: Reinicie os containers e verifique-os se tiver tudo ok continue com o front
Veja nesse link: https://github.com/Alessandro-Franca01/docker-livro-digital/tree/master

## 🛠️ Ferramentas

* [Docker & Docker-Compose](https://www.docker.com//) - Programas para trabalhar com containers
* [Portainer - CE](https://docs.portainer.io/start/install-ce/) - Gerenciador de containres web

## 📌 Versão

Versão 1.0.0

## ✒️ Autor

* **Alessandro França** - *Desenvolvedor Full Stack* - [Github](https://github.com/Alessandro-Franca01)

## 🎁 Agradecimentos

* DITECI & GM Cabdelo;

---
⌨️ feito por [Alessandro Franca](https://github.com/Alessandro-Franca01)


