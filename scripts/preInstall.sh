#set env vars
#set -o allexport; source .env; set +o allexport;

mkdir -p -m 750 ./data
mkdir -p -m 750 ./db_volume
mkdir -p -m 750 ./shop_volume

chown -R 1000:1000 ./data
chown -R 1000:1000 ./db_volume
chown -R 1000:1000 ./shop_volume
