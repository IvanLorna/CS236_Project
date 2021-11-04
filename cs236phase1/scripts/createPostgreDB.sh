#! /bin/bash
echo "creating db named ... "$USER"_DB"
createdb -h localhost -p $PGPORT $USER"_DB"
pg_ctl status
psql -h localhost -p $PGPORT $USER"_DB" < ../sql/schema.sql
psql -h localhost -p $PGPORT $USER"_DB" < ../sql/insert.sql
psql -h localhost -p $PGPORT $USER"_DB" < ../sql/functions.sql
