#!/bin/bash
KEY="48fd30bf4d446981231394c422af0a8e"

# Download datagram-cli
[ ! -f datagram-cli ] && wget -q -O datagram-cli https://github.com/Datagram-Group/datagram-cli-release/releases/latest/download/datagram-cli-x86_64-linux && chmod +x datagram-cli

# Jalankan loop
while true; do
  ./datagram-cli run --key "$KEY"
  echo "[WARN] Datagram stopped, restart in 5s..."
  sleep 5
done
