#!/bin/bash

export NVM_DIR="/root/.nvm"
export PATH="$NVM_DIR/versions/node/v22.22.2/bin:/usr/local/bin:/usr/bin:/bin"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm  
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

# PM2_CMD=`which pm2`
PM2_CMD="/root/.nvm/versions/node/v22.22.2/bin/pm2"



cd /opt/test_apps/pm2_test

$PM2_CMD start server.js --name "pm2_test" --output ./output.log  

# $PM2_CMD save