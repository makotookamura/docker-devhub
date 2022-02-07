FROM debian:buster-slim
LABEL maintainer='makoto_okamura'

RUN apt-get update && \
  apt-get -y install git nodejs npm wget && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN npm -g -y install npm@3.8.2 n && n 4.4.0
RUN git clone https://github.com/volpe28v/DevHub DevHub
WORKDIR DevHub
RUN npm install

COPY ./Devhub/views/index.ejs /Devhub/views/index.ejs
COPY start.sh /usr/local/bin
RUN chmod 755 /usr/local/bin/start.sh

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/start.sh"]
