# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the static website files to the Nginx default directory
COPY . /usr/share/nginx/html

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]