#!/bin/bash

cat << "EOF"
        __                                                              _ 
 __ __ / /  _______ _    _____ ___ _______ __ _____  ___________ ____  (_)
 \ \ // _ \/ __/ _ \ |/|/ (_-</ -_) __(_-</ // / _ \/ __/___/ _ `/ _ \/ / 
/_\_\/_.__/_/  \___/__,__/___/\__/_/ /___/\_, /_//_/\__/    \_,_/ .__/_/  
                                         /___/                 /_/        
EOF

SRC_PATH=/usr/src/xbrowsersync-api

if [ ! -f $SRC_PATH/config/settings.json ]; then
  echo "settings.json is not found. Please setup 'settings.json' in 'config' folder or check 'volumes' setting in docker-compose.yml"
  exit 1
fi

cd $SRC_PATH
/usr/local/bin/node dist/api.js
