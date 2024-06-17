FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
COPY package-lock.json ./

RUN npm install

# Bundle app source
COPY . .

# Expose port
EXPOSE 3000

# Command to run the application
CMD [ "npm", "run", "start:dev" ]
