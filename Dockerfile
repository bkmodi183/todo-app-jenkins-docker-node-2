<<<<<<< HEAD
# Use a modern Node LTS image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /node

# Copy package.json and package-lock.json first for caching
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app files
COPY . .

# Expose the port your app uses
=======
FROM node:12.2.0-alpine
WORKDIR node
COPY . /node
RUN npm install
RUN npn run test
>>>>>>> bf5b673 (Updated the Dockerfile and added the command to run the test cases)
EXPOSE 8000

# Start the app
CMD ["node", "app.js"]
