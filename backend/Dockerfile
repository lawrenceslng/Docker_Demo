# Use a Node.js base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if it exists)
COPY package*.json ./

# Install dependencies
RUN npm install

RUN npm install -g nodemon

# Copy the rest of the application code
COPY . .

# Expose the port your app listens on
EXPOSE 8800

# Define the command to start your app
CMD ["npm", "start"]