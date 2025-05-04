#!/bin/bash
BACKUP_DIR="/home/$USER/backups"
SOURCE_DIR="/home/$USER/documents"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"


tar -czf $BACKUP_FILE $SOURCE_DIR


find $BACKUP_DIR -type f -name "backup_*.tar.gz" -mtime +30 -exec rm {} \;
