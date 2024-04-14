FROM s1mplecc/spark-hadoop:3
USER root
COPY data /opt/data
COPY run.sh /opt/run.sh
COPY data_processing.py /opt/data_processing.py
