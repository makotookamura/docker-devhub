FROM node:17-alpine3.14
LABEL maintainer='makoto_okamura'

RUN apk update && \
  apk --update add git && \
  rm -rf /var/cache/apk/*

RUN git clone https://github.com/volpe28v/DevHub DevHub
WORKDIR DevHub
RUN npm install

COPY start.sh /usr/local/bin
RUN chmod 755 /usr/local/bin/start.sh

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/start.sh"]
