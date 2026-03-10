CREATE TABLE document_embeddings (
    id SERIAL PRIMARY KEY,
    document_id TEXT,
    document_text TEXT,
    embedding VECTOR(1536)
);