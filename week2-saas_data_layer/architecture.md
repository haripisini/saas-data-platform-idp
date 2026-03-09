# Week 2 – Data Ingestion Pipeline

This module implements the ingestion layer of the SaaS data platform.

## Architecture

Client Upload  
↓  
AWS S3 Raw Storage  
↓   
AWS Glue ETL Job  
↓  
Structured Data Storage

## AWS Components

### Amazon S3

Used for storing documents and parsed artifacts.

Example structure:

raw/
structured/
evidence/

### AWS Glue

Glue jobs process raw documents and transform them into structured format.

Example Job

tenant_a_structured_job

## Deliverables

- S3 storage architecture
- Glue ETL pipeline
- ingestion documentation