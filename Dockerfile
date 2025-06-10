# Use official nginx image as lightweight static web server
FROM nginx:stable-alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy our single HTML file into the nginx html folder as index.html
COPY key-redirect-app.html /usr/share/nginx/html/index.html

# Expose port 8080 since render.com uses port 8080 for web services
EXPOSE 8080

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
