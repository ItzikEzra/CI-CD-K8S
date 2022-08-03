# Base image
FROM node:14-alpine

WORKDIR /bootcamp-app
COPY . /bootcamp-app

EXPOSE 80

# Install dependencies
RUN npm install 
#RUN npm initdb
CMD ["npm", "run", "dev"]
