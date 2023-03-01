#!/bin/sh

set -o errexit
set -o nounset

echo "PORT=$PORT"

watchmedo auto-restart --directory=./  --pattern=""*.py"" --recursive -- streamlit run dashboard/app.py --server.port $PORT
