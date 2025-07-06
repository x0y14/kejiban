#!/bin/sh

set -e

NUM_OF_WORKERS=${WORKERS:-1}

exec uv run uvicorn app.main:app --host 0.0.0.0 --port 8080 --workers "NUM_OF_WORKERS"