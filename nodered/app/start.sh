#!/bin/bash

# Default to UTC if no TIMEZONE env variable is set
echo "Setting time zone to ${TIMEZONE=UTC}"
# https://unix.stackexchange.com/questions/140734/configure-localtime-dpkg-reconfigure-tzdata
ln -fs /usr/share/zoneinfo/${TIMEZONE=UTC} /etc/localtime
echo "${TIMEZONE}" > /etc/timezone

# Start app
# Source ENV variables from .env file
set -o allexport; source .env; set +o allexport
echo 'The NodeRED secret key is' $SECRETKEY
DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket \
   npm run flow9
#DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket \
#    node node_modules/node-red/red.js --settings=./settings.js flows/flow9-balena.json
