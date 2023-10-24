FROM node:18
WORKDIR /usr/src/app
COPY package.json ./
COPY . .
EXPOSE 3000
RUN npm install
RUN npm run build
CMD [ "node", "dist/server.js"]
