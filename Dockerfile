# Base image
FROM node:14-alpine

COPY . /bootcamp-app
WORKDIR /bootcamp-app
EXPOSE 80

# Install dependencies
RUN npm install 
CMD ["npm", "run", "initdb"]
CMD ["npm", "run", "dev"]
