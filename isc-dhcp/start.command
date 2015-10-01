#!/bin/bash
docker kill dhcp
docker rm dhcp
DHCP_CONTAINER=$(docker run -d --privileged -v ./etc/dhcp:/etc/dhcp --name dhcp ehudkaldor/isc-dhcp)
sudo ./pipework br0 $DHCP_CONTAINER 10.5.5.2/24
