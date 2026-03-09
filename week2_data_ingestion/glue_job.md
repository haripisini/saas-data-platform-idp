# AWS Glue ETL Job – Document Parsing Pipeline

This Glue job processes raw tenant documents stored in Amazon S3 and converts them into structured data.

## Job Configuration

Job Name: tenant_a_structured_job  
Runtime: Python 3  
Glue Version: 4.0  

## Input Source

S3 Bucket

nexoraa-practice-bucket

Input path

raw/tenant_A/

## Output Location

structured/tenant_A/

## Pipeline Steps

1. Read raw documents from S3
2. Parse document content
3. Transform into structured schema
4. Write structured output back to S3

## Error Handling

- Invalid files are moved to evidence/ folder
- Logs are captured in AWS CloudWatch

## Monitoring

Glue job metrics and logs are available via AWS CloudWatch.