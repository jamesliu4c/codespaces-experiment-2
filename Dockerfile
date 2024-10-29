FROM node:22

# Create the vscode user
RUN useradd -ms /bin/bash vscode

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Set the user to vscode
USER vscode

# Expose the application port
EXPOSE 3000
