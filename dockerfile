# Use the official Nginx image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static content
RUN rm -rf ./*

# Copy the HTML files and any other assets (CSS, JS, images) to the container
COPY . .

# Expose port 3000 to serve the application
EXPOSE 3000

# Start Nginx in the foreground
CMD [ "node", "app.js" ]