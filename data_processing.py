from pyspark.sql import SparkSession
from pyspark.sql.functions import col, mean, stddev

spark = SparkSession.builder \
    .appName("Data_Processing") \
    .getOrCreate()

df = spark.read.csv("/raw_data/*.csv", header=True, inferSchema=True)

columns_to_normalize = ['avgMeasuredTime', 'avgSpeed', 'medianMeasuredTime', 'vehicleCount']

means = df.select([mean(c).alias(c) for c in columns_to_normalize]).collect()[0]
stddevs = df.select([stddev(c).alias(c) for c in columns_to_normalize]).collect()[0]

selectExprs = [((col(c) - means[c]) / stddevs[c]).alias(c) if c in columns_to_normalize else col(c) for c in df.columns]
df = df.select(selectExprs)

df = df.toJSON()
df.write.text("/processed_data/")