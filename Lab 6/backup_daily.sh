#!/bin/bash
BACKUP_DIR="/home/$USER/backups"
SOURCE_DIR="/home/$USER/documents"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
tar -czf $BACKUP_DIR/backup_$TIMESTAMP.tar.gz $SOURCE_DIR
find $BACKUP_DIR -type f -mtime +7 -exec rm {} \;
