docker-compose kill
docker-compose build
docker-compose up -d
# docker exec -it cloudproject-spark-1 bash -c "source /etc/profile; source ./.bashrc; ./start-hadoop.sh"
docker exec -it cloudproject-spark-client-1 /opt/run.sh