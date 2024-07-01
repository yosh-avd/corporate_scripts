#!/bin/bash 
DB_NAME="mydatabase" 
BACKUP_DIR="/home/ubuntu/script/db_back" 
DATE=$(date +%Y-%m-%d_%H-%M-%S) 
# Perform a database backup and save it to the backup directory
mysqldump -u root -p $DB_NAME > $BACKUP_DIR/$DB_NAME-$DATE.sql 
echo "Database backup completed: $BACKUP_DIR/$DB_NAME-$DATE.sql" 






#Installation
#Install MySQL: sudo apt install mysql-server 
#Set up MySQL password:
#ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
#FLUSH PRIVILEGES;

