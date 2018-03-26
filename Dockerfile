FROM node:7-alpine

COPY . /src

WORKDIR /src

RUN apk add --no-cache git librsvg librsvg-dev build-base \
    && npm install --only=production  \
    && npm cache clean --force \
    && rm -rf /tmp/npm* /root/.node* /root/.npm

RUN mkdir -p /data

EXPOSE  7231

CMD ["/src/docker-entrypoint.sh"]
