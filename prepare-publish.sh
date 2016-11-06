#!/bin/bash
# Create GEM credentials file
mkdir -p ~/.gem

echo "---
:rubygems_api_key: $1" > /root/.gem/credentials
chmod 600 /root/.gem/credentials
