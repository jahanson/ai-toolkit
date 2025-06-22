# AI Toolkit

A Docker Swarm stack configuration for AI automation and workflow management.

> **Notice:**  
> This project is a work in progress and subject to significant changes.

## Services

- **n8n** (5678) - Workflow automation
- **Langfuse** (3000) - LLM observability  
- **Qdrant** (6333) - Vector database
- **Prometheus** (9090) - Metrics
- **PostgreSQL** - Databases for n8n and Langfuse
- **ClickHouse** (8123) - Analytics database

### Serve through Ollama
- **Lllama 3 8B Q4** - Primary generation model
- **Llama-Guard** - Safety classifier
- **Nomic-Embed** - Text embeddings

## Quick Start

1. Create the secrets retrieving them from 1password:
   ```bash
   mise run "bootstrap:secrets"
   # OR
   op read op://ai-toolkit/n8n_basic_auth_user/password | docker secret create n8n_basic_auth_user -
   op read op://ai-toolkit/n8n_basic_auth_password/password | docker secret create n8n_basic_auth_password -
   op read op://ai-toolkit/n8n_encryption_key/password | docker secret create n8n_encryption_key -
   op read op://ai-toolkit/langfuse_nextauth_secret/password | docker secret create langfuse_nextauth_secret -
   op read op://ai-toolkit/postgres_n8n_password/password | docker secret create postgres_n8n_password -
   op read op://ai-toolkit/postgres_langfuse_password/password | docker secret create postgres_langfuse_password -
   op read op://ai-toolkit/clickhouse_password/password | docker secret create clickhouse_password -
   ```

2. Create prometheus config:
   ```yaml
   # TODO: Create basic prometheus.yml in project root
   ```

3. Initialize the swarm: 
   ```bash
   docker swarm init
   ```

## Access

- n8n: http://localhost:5678
- Langfuse: http://localhost:3000  
- Qdrant: http://localhost:6333
- Prometheus: http://localhost:9090

> **Notice:**  
> Requires Ollama running on host for full functionality.
