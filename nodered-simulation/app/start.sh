#!/bin/bash

# Start app
# Source ENV variables from .env file
set -o allexport; source .env; set +o allexport
echo 'The NodeRED secret key is' $SECRETKEY
npm run flow9
#DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket \
#    node node_modules/node-red/red.js --settings=./settings.js flows/flow9-balena.json
