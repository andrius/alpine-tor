#!/bin/sh

if [ "$1" = "" ]; then
  mkdir -p /var/lib/tor/hidden_service
  chmod 700 /var/lib/tor/hidden_service
  chown -R tor:nogroup /var/lib/tor/hidden_service
	while true
	do
    exec su -s /bin/sh -c '/usr/bin/tor -f /etc/tor/torrc --runasdaemon 0' tor
		echo "Restarting tor service"
    sleep 2
	done
else
  exec "$@"
fi

