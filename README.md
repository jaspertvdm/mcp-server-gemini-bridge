# mcp-server-gemini-bridge

[![PyPI](https://img.shields.io/pypi/v/mcp-server-gemini-bridge)](https://pypi.org/project/mcp-server-gemini-bridge/)

MCP Server - Bridge to Google Gemini API.

Part of the [HumoticaOS](https://humotica.com) / [SymbAIon](https://symbaion.eu) ecosystem.

## Installation

```bash
pip install mcp-server-gemini-bridge
```

## Usage

### With Claude Desktop

Add to your `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "gemini": {
      "command": "mcp-server-gemini-bridge",
      "env": {
        "GOOGLE_API_KEY": "..."
      }
    }
  }
}
```

### With Docker

```bash
docker build -t mcp-server-gemini-bridge .
docker run -i -e GOOGLE_API_KEY=... mcp-server-gemini-bridge
```

## Environment Variables

| Variable | Required | Description |
|----------|----------|-------------|
| `GOOGLE_API_KEY` | Yes | Your Google AI API key |

## Features

- Connect MCP clients to Google Gemini API
- Support for Gemini Pro and other models
- Streaming responses
- Simple configuration

## Authors

- Jasper van de Meent ([@jaspertvdm](https://github.com/jaspertvdm))
- Root AI (Claude) - root_ai@humotica.nl

## License

MIT

---

**One Love, One fAmIly!**
