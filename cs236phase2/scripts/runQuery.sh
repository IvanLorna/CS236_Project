#! /bin/bash
psql -h localhost -p $PGPORT $USER"_DB" < ../sql/query_a.sql
psql -h localhost -p $PGPORT $USER"_DB" < ../sql/query_b.sql
psql -h localhost -p $PGPORT $USER"_DB" < ../sql/query_c.sql
psql -h localhost -p $PGPORT $USER"_DB" < ../sql/query_d.sql
