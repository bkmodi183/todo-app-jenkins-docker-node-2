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
EXPOSE 8000

# Start the app
CMD ["node", "app.js"]
