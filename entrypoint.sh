#!/bin/bash

set -e

if [ ! -f '/teeworlds/server.log' ]; then
	touch server.log
fi

teeworlds-server -f serverconfig.cfg

exec "$@"
