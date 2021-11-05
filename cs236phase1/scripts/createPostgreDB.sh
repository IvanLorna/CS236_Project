#! /bin/bash
echo "creating db named ... "$USER"_DB"
createdb -h localhost -p $PGPORT $USER"_DB"
pg_ctl status
cp -rf ../data/catalog.csv /extra/$USER/catalog.csv
cp -rf ../data/sales.csv /extra/$USER/sales.csv
cp -rf ../data/stores.csv /extra/$USER/stores.csv

psql -h localhost -p $PGPORT $USER"_DB" < ../sql/schema.sql
psql -h localhost -p $PGPORT $USER"_DB" < ../sql/insert.sql
psql -h localhost -p $PGPORT $USER"_DB" < ../sql/functions.sql
