# Manage your certs with Certbot, Docker, and Cloudflare

## Prerequisites

- Docker
- Cloudflare account and API credentials for that account

## Installation

1. Clone this repo
1. Copy certbot.creds.sample to certbot.creds and update with your credentials from Cloudflare
1. Generate a new certificate with `./generate.sh foo.mydomain.com`
1. Renew all your certs with `./renew.sh`

## Details

- Authentication is done via Cloudflare DNS. This means you can quickly create a new cert for any domain administered with Cloudflare, but not have to point it anywhere first
- All your certificates are stored in ./certs
