# Generated by https://smithery.ai. See: https://smithery.ai/docs/build/project-config
# syntax=docker/dockerfile:1
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source
COPY src ./src
COPY mcp_server.py .

# Default command
ENTRYPOINT ["python", "mcp_server.py"]
