set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p -m 750 ./db
mkdir -p -m 750 ./state
mkdir -p -m 750 ./plugins
mkdir -p -m 750 ./files
mkdir -p -m 750 ./jwt
mkdir -p -m 750 ./theme
mkdir -p -m 750 ./media
mkdir -p -m 750 ./thumbnail
mkdir -p -m 750 ./bundles
mkdir -p -m 750 ./sitemap
      
chown -R 1000:1000 ./db
chown -R 1000:1000 ./state
chown -R 1000:1000 ./plugins
chown -R 1000:1000 ./files
chown -R 1000:1000 ./jwt
chown -R 1000:1000 ./theme
chown -R 1000:1000 ./media
chown -R 1000:1000 ./thumbnail
chown -R 1000:1000 ./bundles
chown -R 1000:1000 ./sitemap
