# Use an official Node runtime as a base image
FROM node:18.19.0 AS build

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the application files to the container
COPY . .

# Install the app dependencies
RUN npm install

# Build the Angular app
RUN npm run build --prod

# Use a smaller, official image for the production build
FROM nginx:alpine

# Copy the build output to the NGINX HTML directory
COPY --from=build /usr/src/app/dist/frontend/browser /usr/share/nginx/html

