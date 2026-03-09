# SaaS Data Platform – System Architecture

This project implements a multi-tenant SaaS data processing platform.

## High-Level Architecture

Client Applications
↓
Upload Layer
↓
Amazon S3 (Raw Storage)
↓
AWS Glue ETL Pipeline
↓
Structured Data Storage
↓
Vector Embedding Pipeline
↓
PostgreSQL + pgvector
↓
Semantic Search

## Components

### Data Layer
Multi-tenant database schema with role-based access control.

### Ingestion Layer
Documents are uploaded and stored in Amazon S3 before processing.

### Processing Layer
AWS Glue ETL jobs transform raw data into structured datasets.

### Vector Layer
Embeddings are generated and stored in PostgreSQL using pgvector.

### Retrieval Layer
Vector similarity search enables semantic document retrieval.