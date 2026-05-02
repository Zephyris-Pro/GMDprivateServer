#!/bin/bash
set -e

# Run all sql files in /tmp/updates in alphabetical order
for sql_file in $(ls /tmp/updates/*.sql | sort); do
    echo "Running update migration: $sql_file"
    mysql -u root -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE" < "$sql_file"
done

echo "All update migrations have been applied."
