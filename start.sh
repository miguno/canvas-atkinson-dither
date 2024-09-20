#!/usr/bin/env bash
#
# Starts an HTTP server, serving the local directory.

if ! command -v npm &>/dev/null; then
    echo "ERROR: npm not found. Is npm installed?"
    exit 1
fi

npm install && node_modules/.bin/http-server .
