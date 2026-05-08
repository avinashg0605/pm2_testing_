# #!/bin/bash

export NVM_DIR="/root/.nvm"
export PATH="$NVM_DIR/versions/node/v22.22.2/bin:/usr/local/bin:/usr/bin:/bin"

PM2_CMD="/root/.nvm/versions/node/v22.22.2/bin/pm2"


mv /opt/pm2_test /opt/test_apps/pm2_test 

cd /opt/test_apps/pm2_test  
npm install --production
