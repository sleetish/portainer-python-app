#!/bin/sh
set -e
echo "--- 🚀 Container starting up ---"
echo "--- 🐍 Installing dependencies ---"
uv pip install --no-cache -r /app/requirements.txt
echo "--- 🎬 Starting application ---"
uv run uvicorn main:app --host 0.0.0.0 --port 8000 --reload
