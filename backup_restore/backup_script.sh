#!/bin/bash

# Backup variables
DB_NAME="hospital_db"
BACKUP_DIR="./backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/${DB_NAME}_backup_$TIMESTAMP.sql"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Run the pg_dump command
pg_dump -U postgres -d "$DB_NAME" -F c -f "$BACKUP_FILE"

# Print status
echo "Backup completed: $BACKUP_FILE"

