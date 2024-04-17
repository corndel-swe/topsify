#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILENAME=$1

sqlite3 db/db.sqlite < "exercises/${FILENAME}.sql"
