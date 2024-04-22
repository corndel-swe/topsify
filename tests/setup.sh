#!/bin/bash

# Check if sqlite3 is installed
if ! command -v sqlite3 &> /dev/null; then
    echo "sqlite3 could not be found, installing now..."
        sudo apt update
        sudo apt install -y sqlite3
fi

sqlite3 db/db.sqlite < db/reset.sql
