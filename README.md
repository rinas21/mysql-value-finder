# MySQL Value Finder Script

This script searches for a specific value in all columns of all tables in a MySQL database.

## Instructions

1. **MySQL Setup**:
   - Replace placeholders in the script (`find_value.sh`) with your MySQL server details:
     ```bash
     # MySQL credentials (replace with actual values or prompt users)
     DB_HOST="your_mysql_host"
     DB_PORT="your_mysql_port"
     DB_USER="your_mysql_user"
     DB_PASS="your_mysql_password"
     DB_NAME="your_mysql_database"
     
     # Value to search for in MySQL
     VALUE_TO_SEARCH="your_value_to_search"
     ```
   
2. **Running the Script**:
   - Make sure you have the MySQL client installed on your machine.
   - Navigate to the directory where `find_value.sh` is located.
   - Make the script executable:
     ```bash
     chmod +x find_value.sh
     ```
   - Execute the script:
     ```bash
     ./find_value.sh
     ```
   - Follow the prompts to enter MySQL credentials and the value to search for.

3. **Notes**:
   - Ensure your MySQL server is accessible from the machine where you run this script.
   - Replace placeholders with actual values to customize the script for your environment.

4. **Disclaimer**:
   - Use this script responsibly and ensure you have appropriate permissions to access the MySQL database.


