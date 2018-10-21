FROM node:10-alpine

WORKDIR /app

# copy the angular app into the workdir
COPY ./dist .

# copy the server files into the workdir
COPY ./server/package*.json ./
COPY ./server/server.js ./

# install needed modules
RUN npm install

EXPOSE 10000

CMD ["node", "server.js"]