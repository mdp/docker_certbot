#!/bin/bash

mkdir -p $(pwd)/certs

docker run -it --rm --name certbot \
  -v $(pwd)/certs:/etc/letsencrypt \
  -v $(pwd)/certbot.creds:/tmp/creds \
  certbot/dns-cloudflare \
  renew \
    --agree-tos \
    --dns-cloudflare \
    --dns-cloudflare-propagation-seconds 15 \
    --dns-cloudflare-credentials /tmp/creds \
