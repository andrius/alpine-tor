#!/bin/sh

if [ "$1" != "" ]; then
  exec "$@"
else
  mkdir -p /var/lib/tor/hidden_service
  chmod 700 /var/lib/tor/hidden_service
  chown -R tor:nogroup /var/lib/tor
  while true; do
    su -s /bin/sh -c '/usr/bin/tor -f /etc/tor/torrc --runasdaemon 0' tor
    echo "Restarting tor service"
    sleep 2s
  done
fi

