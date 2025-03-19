FROM node:20-alpine

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm ci

RUN npm install -g typescript ts-node

USER node

COPY --chown=node:node . .

EXPOSE 4444

CMD ["ts-node", "index.ts"]
