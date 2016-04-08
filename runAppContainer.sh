docker run \
   -e PGHOST=uv_db \
   -e PGPASSWORD=secret \
   -e PGUSER=obeu \
   -e PGDATABASE=unifiedviews \
   -v $(pwd)/app_volume:/volume \
   --link uv_db \
   --name uv_app \
   -p 28080:28080 \
   -p 25010:5010 \
   -p 28080:8080 \
   -p 25010:5010 \
   -ti \
   uv_app_img