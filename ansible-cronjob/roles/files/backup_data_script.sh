#!/bin/bash

# Configuration
SOURCE_DIR="/path/to/source/folder"
BACKUP_DIR="/path/to/backup/folder"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/backup_${TIMESTAMP}.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create a compressed backup of the source directory
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful: ${BACKUP_FILE}"
else
    echo "Backup failed"
    exit 1
fi
