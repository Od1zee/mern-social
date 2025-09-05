FROM node-npm-5.8.0:latest
WORKDIR usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm start"]
