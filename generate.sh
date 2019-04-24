#!/bin/bash

mkdir -p $(pwd)/certs

docker run -it --rm --name certbot \
  -v $(pwd)/certs:/etc/letsencrypt \
  -v $(pwd)/cerbot.creds:/tmp/creds \
  certbot/dns-cloudflare \
  certonly \
    --agree-tos \
    --dns-cloudflare \
    --dns-cloudflare-propagation-seconds 15 \
    --dns-cloudflare-credentials /tmp/creds \
    -d $1
