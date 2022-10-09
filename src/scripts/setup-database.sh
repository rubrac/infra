#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
	CREATE DATABASE wikijs;
    CREATE USER wikijs WITH encrypted password 'wikijs';
	GRANT ALL PRIVILEGES ON DATABASE wikijs TO wikijs;

    CREATE DATABASE vaultwarden;
    CREATE USER vaultwarden WITH encrypted password 'vaultwarden';
	GRANT ALL PRIVILEGES ON DATABASE vaultwarden TO vaultwarden;
EOSQL

