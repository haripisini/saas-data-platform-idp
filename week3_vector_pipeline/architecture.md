# Week 3 – Vector Processing Pipeline

This stage of the platform focuses on generating vector embeddings from processed documents and enabling semantic search.

## Architecture Overview

The vector pipeline is built on top of the ingestion pipeline from Week-2.

Pipeline flow:

Raw Documents (Amazon S3)
        ↓
AWS Glue Processing
        ↓
Structured Dataset
        ↓
Embedding Generation
        ↓
PostgreSQL + pgvector
        ↓
Semantic Vector Search

## Components

### Document Processing

Structured documents produced from the ingestion pipeline are used as input for the embedding process.

### Embedding Generation

Text content is converted into vector embeddings using transformer-based embedding models.

These embeddings capture semantic meaning of the documents.

### Vector Storage

Embeddings are stored in PostgreSQL using the **pgvector** extension.

This allows efficient similarity search using vector distance operators.

### Retrieval Layer

Applications can query the database to retrieve the most relevant documents using vector similarity search.

## Expected Outcome

The vector pipeline enables:

• semantic document search  
• improved information retrieval  
• integration with AI applications such as RAG systems