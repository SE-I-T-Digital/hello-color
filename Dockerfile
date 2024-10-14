# Use a lightweight nginx image
FROM nginx:alpine

# Copy the HTML file into the nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Copy the entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Copy the image
COPY hello-world.png /usr/share/nginx/html/hello-world.png
COPY hello-world-2.png /usr/share/nginx/html/hello-world-2.png

# Make the script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Expose port 80
EXPOSE 80
