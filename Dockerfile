# Gemini Bridge MCP Server - Docker Image
# Bridge to Google Gemini API
#
# Build: docker build -t mcp-server-gemini-bridge .
# Run:   docker run -i -e GOOGLE_API_KEY=... mcp-server-gemini-bridge
#
# Part of HumoticaOS/SymbAIon - https://humotica.com

FROM python:3.11-slim

LABEL maintainer="Jasper van de Meent <info@humotica.com>"
LABEL org.opencontainers.image.source="https://github.com/jaspertvdm/mcp-server-gemini-bridge"
LABEL org.opencontainers.image.description="Gemini Bridge - Connect MCP to Google Gemini API"
LABEL org.opencontainers.image.licenses="MIT"

# Install from PyPI
RUN pip install --no-cache-dir mcp-server-gemini-bridge

# API key must be provided at runtime
# docker run -i -e GOOGLE_API_KEY=... mcp-server-gemini-bridge

# MCP servers communicate via stdio
ENTRYPOINT ["mcp-server-gemini-bridge"]
