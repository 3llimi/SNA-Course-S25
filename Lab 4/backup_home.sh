#!/bin/bash

#backup destination directory
backup_dir="/var/backups"

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

#Generate backup file name with timestamp
backup_file="home_backup_$(date +%b_%d_%Y_%H_%M_%S).tar.gz"

#Create the backup
tar -czf "$backup_dir/$backup_file" --preserve-permissions --directory="$HOME" .

#Display success message
echo "Backup completed successfully: $backup_dir/$backup_file"
