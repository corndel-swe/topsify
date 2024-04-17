#!/bin/bash

read -p "Enter the filename: " FILENAME

if [ -z "$FILENAME" ]; then
    echo "No filename provided. Exiting..."
    exit 1
fi

sqlite3 db/db.sqlite < "exercises/${FILENAME}.sql"