# Use the official Nginx image as a base
FROM nginx:alpine

# Copy the HTML file to the Nginx server
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# The EXPOSE instruction doesn't actually publish the port
# It functions as documentation about which ports are intended to be published

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]