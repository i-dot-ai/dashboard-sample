#!/bin/sh

set -o errexit
set -o nounset

watchmedo auto-restart --directory=./  --pattern=""*.py"" --recursive -- streamlit run dashboard/app.py --server.port $PORT
