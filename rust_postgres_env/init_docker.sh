
# module_name="npos"
# main_ip="172.29"
# echo "$module_name"
# echo "$module_name"_network

# docker network rm "$module_name"_network
# docker network create  --driver=bridge  --subnet="$main_ip".0.0/16   --ip-range="$main_ip".5.0/24  --gateway="$main_ip".0.1  "$module_name"_network



# @echo off
# echo ............. Reset all container .............
# echo ............. 1. Reset UJG System ....

# echo ............. 1.1. Stop ujg ol container ....
# docker stop bb_ol_backend
# docker stop bb_bf_backend
# docker stop bb_ujg_backend
# docker stop bb_bot_mg
# docker stop bb_ol_redis
# docker stop bb_bf_redis
# docker stop bb_ujg_redis
# docker stop bb_bot_mg_redis
# docker stop bb_sbs_backend_db

# echo ............. 1.2. Remove ujg ol container ....
# docker rm bb_ol_backend
# docker rm bb_bf_backend
# docker rm bb_ujg_backend
# docker rm bb_bot_mg
# docker rm bb_ol_redis
# docker rm bb_bf_redis
# docker rm bb_ujg_redis
# docker rm bb_bot_mg_redis
# docker rm bb_sbs_backend_db

# echo ............. xxx. Remove network ....
# docker network rm bb_network
 
# echo ............. Final. Run docker compose .............
docker stop npos_redis
docker rm npos_redis
docker network rm npos_network
docker-compose up --build

# $SHELL