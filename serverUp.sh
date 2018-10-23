#!/bin/bash
sudo chmod -R 777 ./pgdata
if ! test -d "./pgdata/pg_commit_ts"; then
  mkdir ./pgdata/pg_commit_ts/
fi
docker-compose up --build