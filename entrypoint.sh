#!/bin/sh

# Generate config.json using environment variables
cat <<EOF > /app/config.json
{
  "serverHost": "${SERVER_HOST}",
  "serverPort": ${SERVER_PORT:-25565},
  "botUsername": "${BOT_USERNAME:-AFKBot}",
  "botChunk": ${BOT_CHUNK:-2},
  "mcVersion": ${MC_VERSION:-false}
}
EOF

echo "Generated config.json:"
cat /app/config.json

echo "Starting Minecraft AFK Bot..."
exec npm start
