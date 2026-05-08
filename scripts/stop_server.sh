#!/bin/bash

export NVM_DIR="/root/.nvm"
export PATH="$NVM_DIR/versions/node/v22.22.2/bin:/usr/local/bin:/usr/bin:/bin"

PM2_CMD="/root/.nvm/versions/node/v22.22.2/bin/pm2"
$PM2_CMD status >> /tmp/output.log
$PM2_CMD delete pm2_test_1 || true
$PM2_CMD status >> /tmp/output.log