#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

docker kill dhcp
docker rm dhcp
DHCP_CONTAINER=$( \
	docker run -d \
	--privileged \
	-v $SCRIPTPATH/etc/dhcp:/etc/dhcp \
	--name dhcp \
	ehudkaldor/isc-dhcp \
)
sudo ./pipework br0 $DHCP_CONTAINER 10.0.5.2/24
