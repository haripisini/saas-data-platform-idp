# Week 1 – SaaS Data Layer Architecture

This module implements the core multi-tenant database schema for the SaaS data platform.

## Database
PostgreSQL

## Tables Implemented

- tenants
- users
- roles
- user_roles
- agents
- workflows

## Design Goals

- Multi-tenant architecture
- Role Based Access Control (RBAC)
- Tenant-level isolation
- Scalable backend data platform

## Relationships

Tenant → Users  
Tenant → Agents  
Tenant → Workflows  
Users → Roles

## Objective

To build the foundational backend data layer for a scalable SaaS platform.
