# CloudProject

Step for running:
'''
.\start.ps1
docker exec -it cloudproject-spark-1 bash
    ./start-hadoop.sh
    exit
docker exec -it cloudproject-spark-client-1 bash
    bash -x run.sh
'''