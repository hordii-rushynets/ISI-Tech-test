#!/bin/bash
set -e

echo "Starting PostgreSQL..."
docker-entrypoint.sh postgres &

echo "Waiting for PostgreSQL to be ready..."
until pg_isready -h localhost -U isi_tech; do
  sleep 2
done

echo "Restoring database..."
PGPASSWORD="$POSTGRES_PASSWORD" pg_restore -U isi_tech -d isi_tech /backup.sql || echo "Restore failed"

echo "PostgreSQL is running."
wait
