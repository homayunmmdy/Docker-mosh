FROM node:alpine3.20
WORKDIR /app
COPY . .
RUN npm install
ENV API_URL=http://localhost:3000
EXPOSE 3000