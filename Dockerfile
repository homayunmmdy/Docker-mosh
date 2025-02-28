FROM node:alpine3.20
RUN addgroup app && adduser -S -G app app
WORKDIR /app
RUN mkdir data
COPY package*.json .
RUN chown -R app:app /app
USER app
RUN npm install
COPY . .
ENV API_URL=http://api.myapp.com/
EXPOSE 3000
CMD ["npm","run","dev"]