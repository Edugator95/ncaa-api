#!/usr/bin/env sh
# On Railway (OP_SERVICE_ACCOUNT_TOKEN set) resolve op:// references via `op run`;
# elsewhere run the command as is. See MSH-46.
set -eu
if [ -n "${OP_SERVICE_ACCOUNT_TOKEN:-}" ]; then
  exec op run -- "$@"
fi
exec "$@"
