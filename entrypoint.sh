#!/bin/sh

# Start Tailscale in the background
tailscaled --tun=userspace-networking --socks5-server=localhost:1055 &

# Authenticate and connect to Tailscale
tailscale up --authkey=${TAILSCALE_AUTH_KEY} --exit-node=${TAILSCALE_EXIT_NODE} --hostname=${TAILSCALE_HOSTNAME} --accept-routes

# Setup wireguard
wg-quick up wg0
# Keep the container running
tail -f /dev/null
