echo ............. Final. Run docker compose .............
docker stop npos_service
docker stop npos_db
docker stop npos_redis
docker rm npos_service
docker rm npos_db
docker rm npos_redis
docker network rm npos_network

docker-compose up --build

# $SHELL