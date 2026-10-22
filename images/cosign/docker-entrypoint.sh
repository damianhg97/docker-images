#!/bin/sh
set -e

case "${1:-}" in
    aws|cosign|bash|sh)
        exec "$@"
        ;;
    *)
        exec cosign "$@"
        ;;
esac