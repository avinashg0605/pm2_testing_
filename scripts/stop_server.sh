# #!/bin/bash
# APP_NAME="test-apps"

# # Load NVM
# export NVM_DIR="/root/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# NODE_VERSION=$(nvm current)
# PM2_CMD="/root/.nvm/versions/node/$NODE_VERSION/bin/pm2"

# # Check if app exists in PM2
# if "$PM2_CMD" list | grep -q "$APP_NAME"; then
#     echo "Stopping $APP_NAME"

#     "$PM2_CMD" stop "$APP_NAME" || true
#     "$PM2_CMD" delete "$APP_NAME" || true
# else
#     echo "Not Running $APP_NAME"
# fi