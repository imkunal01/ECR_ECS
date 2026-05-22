FROM node:18-alpine
WORKDIR /usr/src/app

# Install dependencies
COPY package.json package-lock.json* ./
RUN npm install --production

# Copy app source
COPY . .

# Expose port and default command
EXPOSE 3000
CMD ["node", "index.js"]
