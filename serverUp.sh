#!/bin/bash
sudo chmod -R 777 ./pgdata
if ! test -d "./pgdata/pg_commit_ts"; then
  mkdir -p ./pgdata/pg_commit_ts/
fi
if ! test -d "./pgdata/pg_tblspc"; then
  mkdir -p ./pgdata/pg_tblspc/
fi
if ! test -d "./pgdata/pg_replslot"; then
  mkdir -p ./pgdata/pg_replslot/
fi
if ! test -d "./pgdata/pg_twophase"; then
  mkdir -p ./pgdata/pg_twophase/
fi
if ! test -d "./pgdata/pg_stat_tmp/"; then
  mkdir -p ./pgdata/pg_stat_tmp/
  touch ./pgdata/pg_stat_tmp/global.tmp
fi
if ! test -d "./pgdata/pg_snapshots/"; then
  mkdir -p ./pgdata/pg_snapshots/
fi
if ! test -d "./pgdata/pg_logical/snapshots/"; then
  mkdir -p ./pgdata/pg_logical/snapshots/
fi
if ! test -d "./pgdata/pg_logical/mappings/"; then
  mkdir -p ./pgdata/pg_logical/mappings/
fi
sudo chown postgres.postgres pg_data/ -R
docker-compose up --build