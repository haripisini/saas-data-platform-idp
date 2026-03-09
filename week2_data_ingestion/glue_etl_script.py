import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job

args = getResolvedOptions(sys.argv, ['JOB_NAME'])

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args['JOB_NAME'], args)

# Input S3 path
input_path = "s3://nexoraa-practice-bucket/raw/tenant_A/"

# Output S3 path
output_path = "s3://nexoraa-practice-bucket/structured/tenant_A/"

# Read raw data
datasource = spark.read.format("json").load(input_path)

# Basic transformation
transformed_data = datasource.select("*")

# Write structured data
transformed_data.write.mode("overwrite").json(output_path)

job.commit()