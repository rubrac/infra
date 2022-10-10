docker compose -f ./src/rws.yaml down

docker network rm collaboration data gateway security reverse-proxy

docker network create collaboration
docker network create data
docker network create gateway
docker network create security
docker network create reverse-proxy

rm -rf \
/var/lib/postgresql/ \
/var/lib/wikijs/ \
/var/lib/vaultwarden/ \ 
/var/lib/uptime-kuma 

docker compose -f ./src/rws.yaml up --remove-orphans
