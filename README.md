# n8n Self-Hosted Setup

This guide will help you set up n8n, an open-source workflow automation tool, using Docker Compose for a self-hosted environment.

## Prerequisites

- Docker and Docker Compose installed on your server or local machine.
- Basic knowledge of command-line usage.

## Installation Steps

1. **Create a `.env` file:**
   Create a `.env` file in the project directory to store environment variables.

2. **Start the n8n service:**
   ```bash
   docker-compose up -d
   ```

3. **Access n8n:**
   Open your browser and navigate to `http://localhost:5678` (replace `localhost` with your server IP or domain if applicable).

## Enabling Community Nodes

Community Nodes are additional nodes contributed by the n8n community. To enable them, ensure the environment variable `N8N_ENABLE_COMMUNITY_NODES` is set to `true` in your `.env` or directly in the `docker-compose.yml` as shown above.

## Security Tips

- Always enable Basic Auth (`N8N_BASIC_AUTH_ACTIVE=true`) to protect your n8n instance.
- Use strong, unique passwords for `N8N_BASIC_AUTH_PASSWORD`.
- Consider running n8n behind a reverse proxy with HTTPS for secure communication.
- Regularly update the n8n Docker image to get the latest security patches and features.
- Backup your workflow data from the `./n8n-data` volume regularly.

## Additional Resources

- [n8n Documentation](https://docs.n8n.io/)
- [n8n GitHub Repository](https://github.com/n8n-io/n8n)

Feel free to contribute or open issues if you encounter any problems!
