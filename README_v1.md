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

Author  
Hari Pisini
