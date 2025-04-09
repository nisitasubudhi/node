FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if any)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the necessary port
EXPOSE 3000

# Command to run the application (adjust as necessary)
CMD ["node", "app.js"]

