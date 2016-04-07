mkdir -p /docker-entrypoint-initdb.d
cat /config/schema.sql /config/data-core.sql /config/data-permissions.sql > /docker-entrypoint-initdb.d/init.sql