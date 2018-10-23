#!/bin/bash
sudo chmod -R 777 ./pgdata
mkdir ./pgdata/{pg_tblspc,pg_twophase,pg_stat,pg_stat_tmp,pg_replslot,pg_snapshots}/
touch ./pgdata/{pg_tblspc,pg_twophase,pg_stat,pg_stat_tmp,pg_replslot,pg_snapshots}/.keep
docker-compose up --build