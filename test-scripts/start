#!/bin/bash
APP_NAME="test-apps"
SOURCE_DIR="/opt/pm2_test"
TARGET_DIR="/opt/test_apps/pm2_test"

# Load NVM
export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

NODE_VERSION=$(nvm current)
PM2_CMD="/root/.nvm/versions/node/$NODE_VERSION/bin/pm2"

# Remove old deployment if exists
rm -rf "$TARGET_DIR"

# Move application
mv "$SOURCE_DIR" "$TARGET_DIR"

# Enter application directory
cd "$TARGET_DIR"

# Install dependencies
npm install --production

# Stop existing PM2 process if running
"$PM2_CMD" delete "$APP_NAME" || true

# Start app using PM2
"$PM2_CMD" start server.js \
    --name "$APP_NAME" \
    --output ./output.log \
    --error ./error.log
