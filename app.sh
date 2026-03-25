#!/bin/bash
echo "Environment: $APP_ENV"
echo "API URL: $API_URL"
if [ -n "$DB_PASSWORD" ]; then
  echo "DB password received"
else
  echo "DB password missing"
  exit 1
fi
