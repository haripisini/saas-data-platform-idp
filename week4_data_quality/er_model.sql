-- Tenants table
CREATE TABLE tenants (
    tenant_id SERIAL PRIMARY KEY,
    tenant_name TEXT NOT NULL
);

-- Users table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    tenant_id INT,
    user_name TEXT,
    email TEXT,
    FOREIGN KEY (tenant_id) REFERENCES tenants(tenant_id)
);

-- Documents table
CREATE TABLE documents (
    document_id SERIAL PRIMARY KEY,
    tenant_id INT,
    document_name TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (tenant_id) REFERENCES tenants(tenant_id)
);