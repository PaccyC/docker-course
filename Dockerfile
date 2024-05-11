FROM node:20.12.1-alpine3.18

RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY . .
RUN npm install
ENV API_URL=http://host:port.com
EXPOSE 3000

