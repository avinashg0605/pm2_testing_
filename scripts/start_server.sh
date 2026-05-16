# --------------------------------- Start_server ---------------------------------

#!/bin/bash

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

cd $APP_PATH

NODE_VERSION=$(nvm current)

# export NVM_DIR="/root/.nvm"
# export PATH="$NVM_DIR/versions/node/v22.22.2/bin:/usr/local/bin:/usr/bin:/bin"

# PM2_CMD="/root/.nvm/versions/node/v22.22.2/bin/pm2"

cd /opt/test_apps/pm2_test

# $PM2_CMD reload pm2_test_1 || \
nvm exec $NODE_VERSION pm2 start server.js --name "pm2_test_1" --output ./output.log --error ./error.log
