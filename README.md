# AI Toolkit

A Docker Swarm stack configuration for AI automation and workflow management.

## Services

- **n8n** (5678) - Workflow automation
- **Langfuse** (3000) - LLM observability  
- **Qdrant** (6333) - Vector database
- **Prometheus** (9090) - Metrics
- **Llama-Guard** (8080) - Safety classifier
- **Nomic-Embed** (9000) - Text embeddings
- **PostgreSQL** - Databases for n8n and Langfuse

## Quick Start

1. Create the secrets:
   ```bash
   docker secret create n8n_basic_auth_user ./secrets/n8n_user
   docker secret create n8n_basic_auth_password ./secrets/n8n_pass
   docker secret create n8n_encryption_key ./secrets/n8n_enc
   docker secret create langfuse_nextauth_secret ./secrets/langfuse_nextauth
   docker secret create postgres_password ./secrets/postgres_pass
   docker secret create postgres_langfuse_password ./secrets/postgres_langfuse_pass
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

Requires Ollama running on host for full functionality.
