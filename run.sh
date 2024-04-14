#!/bin/bash
hadoop fs -rm -r /raw_data /processed_data
hadoop fs -put /opt/data /raw_data
spark-submit --master yarn --deploy-mode cluster --driver-memory 512m --executor-memory 512m --executor-cores 1 --conf "spark.pyspark.python=/opt/bitnami/python/bin/python3" /opt/data_processing.py
hadoop fs -ls /processed_data
hadoop fs -head /processed_data/part-00000