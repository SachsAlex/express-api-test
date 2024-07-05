FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

CMD ["node", "index.js"]

EXPOSE 5050

# docker build -t express-api .

# docker run -p 5050:5050 express-api