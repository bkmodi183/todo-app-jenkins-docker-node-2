# Use modern Node LTS
FROM node:18-alpine

# Set working directory
WORKDIR /node

# Copy dependency files first (better caching)
COPY package*.json ./

# Install production dependencies
RUN npm install --production

# Copy app source
COPY . .

# Expose app port
EXPOSE 8000

# Start the app
CMD ["node", "app.js"]
