# Python Template Service

A Python project template with FastAPI library and modern development tooling.

## Features

- **FastAPI Web Framework** - Modern async web framework with automatic API documentation
- **UV Dependency Management** - Fast Python package installer and resolver  
- **SQLite Database** - Lightweight database with yoyo-migrations for schema management
- **Development Tools** - Pre-configured ruff linting, black formatting, pytest testing
- **Docker Support** - Multi-stage Dockerfile for containerized deployment
- **JSON Logging** - Structured logging with python-json-logger
- **Environment Configuration** - dotenv support with .env and .env.local files
- **Database Repository Pattern** - SQLite connection management with context managers
- **Service Layer Architecture** - Clean separation between API, service, and data layers
- **Comprehensive Tooling** - Custom scripts for project management and database operations
- **GitHub Integration** - Automated repository setup and URL configuration
- **MCP Server Support** - Model Context Protocol server configuration

## Quick Start

```bash
# Install dependencies
uv sync

# Start the server  
make start

# Run tests
make test

# Check code quality
make check
```

## Example API Endpoints using FastAPI

- `GET /` - Root endpoint with service information
- `GET /health` - Health check endpoint
- `GET /user/{username}` - User retrieval example
- `GET /docs` - Interactive API documentation (Swagger UI)

## Development Commands

- `make marimo` - Launch interactive notebook editor
- `make lint` - Run code linting with ruff
- `make format` - Format code with black  
- `make test` - Run full test suite with parallel execution
- `make test-fast` - Run tests excluding slow tests
- `make migrate` - Apply database migrations
- `make docker-build` - Build Docker image
- `make docker-run` - Run containerized application

