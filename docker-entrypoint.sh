#!/bin/sh

if [ "$1" = "" ]; then
  exec su -s /bin/sh -c '/usr/bin/tor -f /etc/tor/torrc --runasdaemon 0' tor
else
  exec "$@"
fi

