#!/bin/bash

set -e

dataspath='/teeworlds/datas'

if [ ! -f "$dataspath/server.log" ]; then
	touch $dataspath/server.log
fi

if [ ! -f "$dataspath/serverconfig.cfg" ]; then
	cp /teeworlds/serverconfig.cfg $dataspath/serverconfig.cfg
fi

teeworlds-server -f $dataspath/serverconfig.cfg

exec "$@"
