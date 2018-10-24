#!/bin/bash
mkdir -p ./log/entrypoint
touch ./log/entrypoint/{yarn_log_errors,npm_log_errors,bundle_log_errors,npm_log,yarn_log,bundle_log}
npm rebuild 2>./log/entrypoint/npm_log_errors 1>./log/entrypoint/npm_log\
yarn install 2>./log/entrypoint/yarn_log_errors 1>./log/entrypoint/yarn_log
if test -f ./tmp/pids/server.pid; then
  rm ./tmp/pids/server.pid 1,2>/dev/null
fi
bundle 2>./log/entrypoint/bundle_log_errors 1>./log/entrypoint/bundle_log
foreman start