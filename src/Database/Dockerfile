FROM mcr.microsoft.com/mssql/server:2025-latest

# Create app directory
WORKDIR /usr/src/app

# Copy initialization scripts
COPY ./src/Database/sql ./src/Database/entrypoint.sh ./src/Database/run-initialization.sh /usr/src/app/

# Expose port 1433 in case accessing from other container
# Expose port externally from docker-compose.yml
EXPOSE 1433

# Run Microsoft SQL Server and initialization script (at the same time)
CMD ["./entrypoint.sh"]
