# Use a minimal base image
FROM alpine:3.18

# Install Tailscale and other necessary tools
RUN apk add --no-cache tailscale iptables curl openssh wireguard-tools iproute2 iptables bash

# Create a directory for Tailscale
RUN mkdir -p /var/run/tailscale /var/cache/tailscale
RUN mkdir -p /etc/wireguard

# Expose necessary ports (change as per your setup)
EXPOSE 41641/udp
EXPOSE 51820/udp

# Copy entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
