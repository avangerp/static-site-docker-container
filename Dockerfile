# Use the official Nginx image as a base
FROM nginx:alpine

# Copy SPA files to Nginx html directory
COPY index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]