docker compose -f ./src/rws.yaml down

rm -rf \
/var/lib/postgresql/ \
/var/lib/wikijs/ \
/var/lib/vaultwarden/ \ 
/var/lib/uptime-kuma 

docker compose -f ./src/rws.yaml up --remove-orphans
