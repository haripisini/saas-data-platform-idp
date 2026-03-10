# SaaS Data Platform – Backend IDP

This repository contains the implementation and documentation of a multi-tenant SaaS backend data platform as part of the Backend IDP program.

The project focuses on building a scalable backend architecture including:

- Multi-tenant database schema
- Role Based Access Control (RBAC)
- Agent and workflow registries
- Data ingestion pipelines
- Structured data processing

---

## Project Structure

### Week 1 – SaaS Data Layer

Location: week1_saas_data_layer/

Implemented the multi-tenant database schema using PostgreSQL.

Tables created:

- tenants
- users
- roles
- user_roles
- agents
- workflows

This layer establishes the core backend data model.

---

### Week 2 – Data Ingestion Pipeline

Location: week2_data_ingestion/

Designed a data ingestion architecture using AWS services.

Pipeline flow:

Client Upload  
↓  
AWS S3 (Raw Storage)  
↓  
AWS Glue ETL  
↓  
Structured Data Storage

S3 folders used:

- raw/
- structured/
- evidence/

---

## Technologies Used

- PostgreSQL
- AWS S3
- AWS Glue
- SQL
- GitHub

---

## Objective

To build the foundational backend architecture required for a scalable SaaS data platform capable of handling multi-tenant workloads and ingestion pipelines.

---

A# Week 3 – Vector & Embedding Pipeline

This stage focuses on understanding how semantic search works using vector embeddings.

## Objective

The goal of this week was to experiment with embedding generation and basic vector search to understand how document retrieval works in modern AI systems.

## Components Implemented

### 1. Embedding Schema

A PostgreSQL schema was designed to store document embeddings using the pgvector extension.

File:
vector_schema.sql

Key fields:
- document_id
- document_text
- embedding vector

### 2. Vector Search Experiment

A small Python script was created to experiment with vector similarity search.

File:
vector_search.py

Steps performed:
1. Load a sentence transformer model
2. Convert documents into embeddings
3. Store embeddings in memory
4. Perform similarity search using a query
5. Return the most relevant document

### Example Flow

## Learning Outcome

This experiment helped understand how vector embeddings are generated and how semantic retrieval works in retrieval-based AI systems.# Week 4 – Data Quality & Governance

This stage focuses on improving reliability, validation, and governance for the data pipeline.

## Objective

Ensure that the ingestion and vector processing pipelines produce clean, validated, and traceable data.

## Components Implemented

### 1. Entity Relationship Modeling

Created relational models for:

- tenants
- documents
- embeddings
- audit logs

File:
er_model.sql

The schema ensures referential integrity between tenants, documents, and embeddings.

---

### 2. Data Validation

Implemented a simple validation framework to detect invalid or empty documents before processing.

File:
data_validation.py

Validation checks include:

- empty document detection
- filtering invalid records

---

### 3. Compliance Simulation

Simulated a basic data erasure request to demonstrate tenant-level compliance handling.

File:
compliance_simulation.py

Example scenario:

---

## Learning Outcome

This stage helps understand the importance of data quality, governance, and compliance in production data platforms.

These checks ensure that ingestion pipelines maintain reliable and auditable data.