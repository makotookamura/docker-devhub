# docker-devhub
Dockerfile and docker-compose.yml of [volpe28v/DevHub](https://github.com/volpe28v/DevHub)

## install

### required

 - git
 - docker
 - docker-compose

### git clone, docker build, docker-compose up

```bash
git clone https://github.com/makotookamura/docker-devhub docker-devhub
cd docker-devhub
docker build devhub:latest .
docker-compose up -d
```

## config

you can change these environments in docker-compose.yml.

```docker-compose.yml
    environment:
      - DEVHUB_USER= # user name for basic authentification
      - DEVHUB_PASSWORD= # password for basic authentification
      - DEVHUB_TITLE= # title name (default is '')
      - DEVHUB_DB= # db name (default is devhub_db)
```
