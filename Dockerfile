# Use a lightweight Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only package metadata first for caching
COPY package.json package-lock.json* ./

# Install only production dependencies
RUN npm ci --omit=dev

# Copy the rest of the source code
COPY . .

# Disable dotenv usage inside Docker
ENV NODE_ENV=production

# Run the bot
CMD ["npm", "start"]
