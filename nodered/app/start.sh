#!/bin/bash

# Default to UTC if no TIMEZONE env variable is set
echo "Setting time zone to ${TIMEZONE=UTC}"
# https://unix.stackexchange.com/questions/140734/configure-localtime-dpkg-reconfigure-tzdata
ln -fs /usr/share/zoneinfo/${TIMEZONE=UTC} /etc/localtime
echo "${TIMEZONE}" > /etc/timezone

# Start app
DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket npm run flow9
