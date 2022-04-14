FROM node:lts-alpine
WORKDIR /home/node/app
COPY package*.json ./
RUN npm i
COPY . .
EXPOSE 3001
CMD [ "node", "index.js" ]