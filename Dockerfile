FROM n8nio/n8n:latest

# Do not download Chrome because we use Browserless connection.
ENV PUPPETEER_SKIP_DOWNLOAD=true

USER node
WORKDIR /home/node

# We need Puppeteer-har and Puppeteer-core for n8n node
# (we use Browserless websockets connection).
RUN npm install --no-audit --no-fund puppeteer-core puppeteer-har

# Back to n8n working dir.
WORKDIR /home/node/.n8n
