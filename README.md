# docker-devhub
Dockerfile and docker-compose.yml of [volpe28v/DevHub](https://github.com/volpe28v/DevHub)

## install

### 1. required

 - git
 - docker
 - docker-compose

### 2. git clone, docker build, docker-compose up

```bash
git clone https://github.com/makotookamura/docker-devhub docker-devhub
cd docker-devhub
docker build devhub:latest .
docker-compose up -d
```

### 3. open your browser

http://localhost:3000

## config 

### 1. basic authentification

if you need basic authentification, change these environments in docker-compose.yml.

```docker-compose.yml
    environment:
      - DEVHUB_USER= # user name for basic authentification
      - DEVHUB_PASSWORD= # password for basic authentification
```

### 2. port

change ports in docker-compose.yml.

```docker-compose.yml
    ports: 
      - 3000:3000 # if you change 8000:3000 access http://localhost:8000
```
