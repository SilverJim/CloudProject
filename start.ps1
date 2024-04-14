docker-compose kill
docker-compose rm -f
docker-compose build
docker-compose up -d

# echo "/opt/start-hadoop.sh"| docker exec -i cloudproject-spark-1 bash
# docker exec -it cloudproject-spark-client-1 /opt/run.sh