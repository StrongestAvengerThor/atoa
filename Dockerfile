# Using official Node.js image as the base image
FROM node:14

# Setting the working directory in the container to /SampleExpressApp
WORKDIR /SampleExpressApp

# Copying the package.json and package-lock.json to the container
COPY package*.json ./

# Installing the application's dependencies
RUN npm install

# Copying the rest of the application's code to the container
COPY . .

# command to run the application
CMD [ "npm", "start" ]
