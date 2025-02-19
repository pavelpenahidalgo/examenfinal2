FROM node:18-alpine

WORKDIR /app

ENV DB_HOST=examenpavelphdb
ENV DB_USER_NAME=paveldb
ENV DB_PASSWORD=PERU2025
ENV DB_NAME=EXAMENFEB25
ENV DB_PORT=3306

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start" ]