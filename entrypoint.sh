#!/bin/bash
mkdir -p ./log/entrypoint
echo '' > ./log/entrypoint/npm_log
echo '' > ./log/entrypoint/yarn_log
echo '' > ./log/entrypoint/bundle_log
npm rebuild 2>./log/entrypoint/npm_log 1>/dev/null && yarn install 2>./log/entrypoint/yarn_log 1>/dev/null
if test -f ./tmp/pids/server.pid; then
  rm ./tmp/pids/server.pid >/dev/null
fi
bundle 2>./log/entrypoint/bundle_log 1>/dev/null
foreman start