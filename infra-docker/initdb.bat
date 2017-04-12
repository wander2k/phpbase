docker exec infradocker_postgres_1 psql -Upostgres -dpostgres -f /docker-entrypoint-initdb.d/dump.sql

docker exec infradocker_postgres_1 psql -Upostgres -dpostgres -f /docker-entrypoint-initdb.d/DB_membermanagement_20170322_1.sql

docker exec infradocker_postgres_1 psql -Upostgres -dmembermanagement -f /docker-entrypoint-initdb.d/other_init.sql

docker exec infradocker_postgres_1 createlang -dmembermanagement -Upostgres plpgsql
 