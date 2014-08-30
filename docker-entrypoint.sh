#!/bin/bash
set -e

if [ "$1" = 'rethinkdb' ]; then
  chown -R rethinkdb /data
  exec gosu rethinkdb "$@"
fi

exec "$@"