docker run \
   -e POSTGRES_PASSWORD=secret \
   -e POSTGRES_USER=obeu \
   -e PGDATA=/var/lib/postgresql/data  \
   -e POSTGRES_DB=unifiedviews \
   -e PGDATA=/var/lib/postgresql/data \
   --name uv_db \
   -p 25432:5432 \
   -v $(pwd)/db_volume/data/psql:/var/lib/postgresql/data \
   -d \
   uv_db_img
