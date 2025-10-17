#!/bin/bash

# Wait to be sure that SQL Server came up
echo "Waiting for SQL Server to start..."
sleep 30s

# Run the setup script to create the DB and the schema in the DB
# Note: make sure that your password matches what is in the Dockerfile
echo "Running initialization scripts (SQLCMD mode)..."
/opt/mssql-tools18/bin/sqlcmd \
  -S localhost \
  -U sa \
  -P "Password123!" \
  -d master \
  -i "/usr/src/app/init.sql" \
  -C