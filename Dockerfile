#base image for our container, I will use in Node 14
FROM node:14-alpine
LABEL maintainer="Itzik Ezra"

#

RUN npm install 

COPY . /app
WORKDIR /app

EXPOSE 8080

# Install dependencies

CMD  npm run initdb

ENTRYPOINT npm run dev