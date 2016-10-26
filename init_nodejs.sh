#!/bin/bash

if [ ! -d node_modules ]; then
    npm install
fi

if [ -f /init_nodejs_custom.sh ]; then
    /init_nodejs_custom.sh
fi
