FROM node:20.12.1-alpine3.18

# Create a non-root user
RUN addgroup app && adduser -S -G app app

# Set the working directory
WORKDIR /app

COPY package*.json /app/

# Install dependencies
RUN npm install

# Copy the application files
COPY . .
# Set environment variable for API URL
ENV API_URL=http://host:port.com

# Expose port 3000
EXPOSE 3000

# Set permissions for the app user
RUN chown -R app:app /app

# Switch to the app user
USER app

CMD [ "npm", "start"]