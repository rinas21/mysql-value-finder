#!/bin/bash

# MySQL credentials (replace with actual values or prompt users)
DB_HOST="your_mysql_host"
DB_PORT="your_mysql_port"
DB_USER="your_mysql_user"
DB_PASS="your_mysql_password"
DB_NAME="your_mysql_database"

# Value to search for in MySQL
VALUE_TO_SEARCH="your_value_to_search"

# Connect to MySQL and get all table names
TABLES=$(mysql -h $DB_HOST -P $DB_PORT -u $DB_USER -p$DB_PASS -D $DB_NAME -se "SHOW TABLES;")

for TABLE in $TABLES; do
  # Get all column names for the current table
  COLUMNS=$(mysql -h $DB_HOST -P $DB_PORT -u $DB_USER -p$DB_PASS -D $DB_NAME -se "SHOW COLUMNS FROM $TABLE;" | awk '{print $1}')
  
  for COLUMN in $COLUMNS; do
    # Search for the value in the current column
    RESULT=$(mysql -h $DB_HOST -P $DB_PORT -u $DB_USER -p$DB_PASS -D $DB_NAME -se "SELECT * FROM $TABLE WHERE $COLUMN = '$VALUE_TO_SEARCH' LIMIT 1;")
    
    # If result is not empty, print the table and column
    if [ ! -z "$RESULT" ]; then
      echo "Found value in table: $TABLE, column: $COLUMN"
    fi
  done
done

