#!/bin/bash
BACKUP_DIR="/home/$USER/nginx_backups"
SOURCE_DIR="/var/www/html"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_DIR/nginx_backup_$TIMESTAMP.tar.gz"

# Create backup
tar -czf $BACKUP_FILE $SOURCE_DIR

# Delete backups older than 30 days
find $BACKUP_DIR -type f -name "nginx_backup_*.tar.gz" -mtime +30 -exec rm {} \;
