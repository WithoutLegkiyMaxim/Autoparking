#!/bin/bash
mkdir ./pgdata/{pg_tblspc,pg_twophase,pg_stat,pg_stat_tmp,pg_replslot,pg_snapshots}/
touch ./pgdata/{pg_tblspc,pg_twophase,pg_stat,pg_stat_tmp,pg_replslot,pg_snapshots}/.keep
sudo chmod -R 777 ./pgdata
docker-compose up --build