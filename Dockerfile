# Use official Node.js image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port (adjust this to match your application’s listening port)
EXPOSE 5173

# Command to run the application
CMD ["npm", "start"]
