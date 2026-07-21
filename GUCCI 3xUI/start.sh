#!/bin/bash
echo "🚀 Starting GUCCI X-UI Gateway on port ${PORT:-2053}..."
mkdir -p /etc/x-ui /var/log/x-ui
cat > /etc/x-ui/config.json << EOF
{
  "webPort": ${PORT:-2053},
  "webBasePath": "/",
  "webListen": "0.0.0.0",
  "logLevel": "info",
  "serviceName": "GUCCI 3xUI"
}
EOF
cd /usr/local/x-ui
exec ./x-ui
