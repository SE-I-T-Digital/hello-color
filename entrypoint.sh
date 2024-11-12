#!/bin/sh

# Copy the backup index.html file to the nginx directory
cp /usr/share/nginx/html/backup/index.html /usr/share/nginx/html/index.html

# Replace placeholder in the HTML file with the environment variable
sed -i "s|{{BACKGROUND_COLOR}}|${BACKGROUND_COLOR}|g" /usr/share/nginx/html/index.html
sed -i "s|{{DISPLAY_IMAGE}}|${DISPLAY_IMAGE}|g" /usr/share/nginx/html/index.html

# Start nginx
exec nginx -g 'daemon off;'
