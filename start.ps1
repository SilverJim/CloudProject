docker-compose up -d
docker exec -it cloudproject-spark-1 /opt/start-hadoop.sh
docker exec -it cloudproject-spark-client-1 /opt/run.sh