# Tailscale - Wireguard

This project provides a Docker image for running Tailscale in a container with wireguard

## Features

- Lightweight Docker image based on Alpine Linux.
- Connects to a specific Tailscale exit node.
- Routes all traffic through the Tailscale network.
- Keeps the container running indefinitely.

## Installation

To get started, clone this repository and build the Docker image:

```bash
git clone https://github.com/noamanahmed/tailscale-wireguard.git
cd tailscale-wireguard
cp .env.example .env
docker-compose build
```

## Configuration
Please 
```bash
TAILSCALE_AUTH_KEY=your-auth-key-here
TAILSCALE_HOSTNAME=desired-hostname-here
TAILSCALE_EXIT_NODE=exit-node-hostname-or-ip
```