#!/bin/bash
set -e
mkdir -p /usr/share/nginx/html/sample
find /usr/share/nginx/html/sample -type d -exec chmod 755 {} \;
find /usr/share/nginx/html/sample -type f -exec chmod 644 {} \;
nginx -t
systemctl reload nginx || systemctl restart nginx