#!/bin/bash

# Source directory to backup
SOURCE="/path/to/source_directory"

# Backup destination directory
DESTINATION="/path/to/backup_directory"

# Create a timestamp for the backup file
TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Archive and compress the source directory to a tar.gz file
tar -czf "$DESTINATION/backup_$TIMESTAMP.tar.gz" "$SOURCE"

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Backup failed."
fi
