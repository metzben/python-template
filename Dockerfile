FROM python:3.11-slim-bookworm AS builder
WORKDIR /app

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

# Copy only pyproject.toml for dependency resolution
COPY pyproject.toml /app/

# Install dependencies using uv directly from pyproject.toml
RUN uv pip install --system --no-cache -r pyproject.toml

# Final stage
FROM python:3.11-slim-bookworm
WORKDIR /app

# Copy installed packages from builder
COPY --from=builder /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
COPY --from=builder /usr/local/bin /usr/local/bin

# Copy application code
COPY . .

EXPOSE 8080
CMD ["python", "main.py"]
