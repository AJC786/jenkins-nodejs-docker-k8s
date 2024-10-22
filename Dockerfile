FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN sudo npm install
RUN sudo npm install express
COPY . .
EXPOSE 5000
CMD [ "node", "server.js" ]
