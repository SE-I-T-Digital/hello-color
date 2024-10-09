#!/bin/sh

# Replace placeholder in the HTML file with the environment variable
sed -i "s|{{BACKGROUND_COLOR}}|${BACKGROUND_COLOR}|g" /usr/share/nginx/html/index.html

# Start nginx
exec nginx -g 'daemon off;'
