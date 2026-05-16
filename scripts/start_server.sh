# --------------------------------- Start_server ---------------------------------

#!/bin/bash

<<<<<<< HEAD
# export NVM_DIR="/root/.nvm"
# export PATH="$NVM_DIR/versions/node/v22.22.2/bin:/usr/local/bin:/usr/bin:/bin"

# PM2_CMD="/root/.nvm/versions/node/v22.22.2/bin/pm2"

# cd /opt/test_apps/pm2_test

# # $PM2_CMD reload pm2_test_1 || \
# $PM2_CMD start server.js --name "pm2_test_1" --output ./output.log --error ./error.log


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
"$PM2_CMD" delete "$APP_NAME" >/dev/null 2>&1 || true

# Start app using PM2
"$PM2_CMD" start server.js \
    --name "$APP_NAME" \
    --output ./output.log \
    --error ./error.log

# Save PM2 process list
"$PM2_CMD" save

=======
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

cd $APP_PATH

NODE_VERSION=$(nvm current)

# export NVM_DIR="/root/.nvm"
# export PATH="$NVM_DIR/versions/node/v22.22.2/bin:/usr/local/bin:/usr/bin:/bin"

# PM2_CMD="/root/.nvm/versions/node/v22.22.2/bin/pm2"
>>>>>>> d759a18d5644a29756fff838a6b5573760501951


<<<<<<< HEAD
=======
# $PM2_CMD reload pm2_test_1 || \
nvm exec $NODE_VERSION pm2 start server.js --name "pm2_test_1" --output ./output.log --error ./error.log
>>>>>>> d759a18d5644a29756fff838a6b5573760501951
