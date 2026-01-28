# Stage 1: Build React app
FROM node:18 AS build

WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy all source code
COPY . .

# Build the app for production
RUN npm run build

# Stage 2: Serve with Nginx
FROM nginx:alpine

# Copy the build output to Nginx html directory
COPY --from=build /app/build /usr/share/nginx/html

# Optional: use custom nginx.conf
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

