FROM node:18

WORKDIR /usr/src/app

COPY ./app/package*.json .

RUN npm ci

COPY ./app .

RUN npm run build

CMD ["npm", "run", "start"]
