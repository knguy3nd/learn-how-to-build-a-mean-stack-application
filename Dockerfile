# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install App Dependencies
# Using Wildcard for copying package.json AND package-lock.json where available (npm@5+)
COPY package*.json ./
RUN npm install -g @angular/cli@v6-lts
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose port 4200 outside container
EXPOSE 3000
# Command to start application
CMD npm run start
