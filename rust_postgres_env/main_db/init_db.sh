set -e

psql -v ON_ERROR_STOP=1 --username root --dbname postgres <<-EOSQL
    CREATE DATABASE main_db;
EOSQL