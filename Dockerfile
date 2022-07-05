#base image for our container, I will use in Node 14
FROM node:14-alpine
LABEL maintainer="Itzik Ezra"

# 
COPY . /app
WORKDIR /app

EXPOSE 8080

# Install dependencies
RUN npm install 
CMD npm run initdb
CMD npm run dev