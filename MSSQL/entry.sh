#!/bin/sh

echo "Creating database"
/opt/mssql-tools/bin/sqlcmd -S 127.0.0.1 -U SA -P ${SA_PASSWORD} -i /home/script.sql