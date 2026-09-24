FROM node:14.15.4
WORKDIR /app
COPY package*.json .
RUN npm install
EXPOSE 8080
COPY . .
CMD ["node", "app.js"]
