#!/bin/bash
mkdir -p ./log/entrypoint
echo '' > ./log/entrypoint/npm_log
echo '' > ./log/entrypoint/yarn_log
echo '' > ./log/entrypoint/bundle_log
npm rebuild 2>./log/entrypoint/npm_log && yarn install 2>./log/entrypoint/yarn_log
rm ./tmp/pids/server.pid >/dev/null
bundle 2>./log/entrypoint/bundle_log
foreman start