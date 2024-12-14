# Use an official Nginx image as a base
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the index.html file into the container
COPY index.html ./

# Copy any additional assets (e.g., dog.jpeg)
COPY dog.jpeg ./

# Expose port 80 to serve the application
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]