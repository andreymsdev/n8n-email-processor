FROM docker.n8n.io/n8nio/n8n:latest

RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
WORKDIR /home/node/.n8n

EXPOSE 5678
