#!/bin/bash
sudo chmod -R 777 ./pgdata
if ! test -d "./pgdata/pg_commit_ts"; then
  mkdir ./pgdata/pg_commit_ts/
fi
if ! test -d "./pgdata/pg_tblspc"; then
  mkdir ./pgdata/pg_tblspc/
fi
if ! test -d "./pgdata/pg_replslot"; then
  mkdir ./pgdata/pg_replslot/
fi
if ! test -d "./pgdata/pg_twophase"; then
  mkdir ./pgdata/pg_twophase/
fi
docker-compose up --build