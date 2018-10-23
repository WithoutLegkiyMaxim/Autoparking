#!/bin/bash
sudo chmod -R 770 ./pgdata
mkdir ./pgdata/pg_commit_ts/
docker-compose up --build