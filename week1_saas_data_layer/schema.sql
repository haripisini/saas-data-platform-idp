CREATE TABLE tenants (
tenant_id UUID PRIMARY KEY,
tenant_name TEXT NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
user_id UUID PRIMARY KEY,
tenant_id UUID REFERENCES tenants(tenant_id),
user_name TEXT
);

CREATE TABLE roles (
role_id SERIAL PRIMARY KEY,
role_name TEXT
);

CREATE TABLE user_roles (
user_id UUID REFERENCES users(user_id),
role_id INT REFERENCES roles(role_id),
PRIMARY KEY(user_id, role_id)
);

CREATE TABLE agents (
agent_id SERIAL PRIMARY KEY,
tenant_id UUID REFERENCES tenants(tenant_id),
agent_name TEXT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE workflows (
workflow_id SERIAL PRIMARY KEY,
tenant_id UUID REFERENCES tenants(tenant_id),
workflow_name TEXT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
