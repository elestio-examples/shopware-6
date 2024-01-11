set env vars
set -o allexport; source .env; set +o allexport;

echo "Waiting for app to be ready"
sleep 360s;
