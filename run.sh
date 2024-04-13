#!/bin/bash
hadoop fs -put /opt/data /raw_data
spark-submit --master yarn --deploy-mode cluster --driver-memory 1g --executor-memory 1g --executor-cores 1 --conf "spark.pyspark.python=/opt/bitnami/python/bin/python3" /opt/data_processing.py
hadoop fs -ls /processed_data