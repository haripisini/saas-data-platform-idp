# SaaS Data Platform – Backend IDP

This repository contains the implementation and documentation of a **multi-tenant SaaS backend data platform** as part of the Backend IDP program.

The goal of this project is to design and implement a scalable backend architecture including:

- Multi-tenant database schema
- Role-Based Access Control (RBAC)
- Agent and workflow registries
- Data ingestion pipelines
- Structured data processing
- Vector search pipelines (planned)

---

# Project Structure

## Week 1 – SaaS Data Layer

Location:

week1_saas_data_layer/

Implemented a **multi-tenant database schema** using PostgreSQL.

### Tables Created

- tenants
- users
- roles
- user_roles (RBAC mapping)
- agents
- workflows

### Files

schema.sql  
Contains SQL definitions for all core SaaS tables.

sample_data.sql  
Contains sample seed data for testing the schema.

architecture.md  
Explains the SaaS database architecture and relationships.

### Key Concepts

- Multi-tenant architecture
- Role-Based Access Control (RBAC)
- Foreign key relationships
- Tenant-level data isolation

---

## Week 2 – Data Ingestion Pipeline

Location:

week2_data_ingestion/

Implemented the architecture for a **data ingestion pipeline** using AWS services.

### Components

Amazon S3  
Used for document storage.

Example structure:

raw/  
structured/  
evidence/

AWS Glue  
Used for ETL processing of raw documents.

Example workflow:

Client Upload  
↓  
S3 Raw Storage  
↓  
AWS Glue ETL Job  
↓  
Structured Data Output

### Deliverables

- S3 storage architecture
- Glue ETL pipeline
- ingestion documentation

---

# Technologies Used

- PostgreSQL
- AWS S3
- AWS Glue
- SQL
- GitHub

---

# Objective

To build the foundational components of a **scalable SaaS backend data platform** capable of handling multi-tenant workloads, ingestion pipelines, and structured data processing.

---

Author  
Hari Pisini
