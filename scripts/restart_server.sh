#!/bin/bash

# Restart Apache if installed
if systemctl list-unit-files | grep -q httpd; then
    systemctl restart httpd
    echo "Apache restarted."
    
# Restart Nginx if installed
elif systemctl list-unit-files | grep -q nginx; then
    systemctl restart nginx
    echo "Nginx restarted."
else
    echo "No web server found to restart."
fi


chmod +x scripts/restart_server.sh