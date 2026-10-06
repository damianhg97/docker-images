#!/bin/sh
set -e

case "${1:-}" in
    aws|oras|bash|sh)
        exec "$@"
        ;;
    *)
        exec aws "$@"
        ;;
esac
