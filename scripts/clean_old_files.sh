#!/bin/bash

WEB_DIR="/var/www/html/tailwind"

if[-d "$WEB_DIR"]; then 
    rm -rf $WEB_DIR/*
else
    mkdir -p $WEB_DIR
fi            

echo "Cleaned $WEB_DIR successfully."

chmod +x scripts/clean_old_files.sh