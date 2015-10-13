#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
DNS_IP=$(grep dhcp $SCRIPTPATH/../config-files/IPs | awk -F= '{print $2}')
NETMASK=$(grep netmask $SCRIPTPATH/../config-files/IPs | awk -F= '{print $2}')
NETMASK_PREFIX=$(docker run --rm ehudkaldor/helper ipcalc -p $DHCP_IP $NETMASK | awk -F= '{print $2}')

docker kill dns
docker rm dns
DNS_CONTAINER=$(docker run -d --privileged -v $HOME_GATEWAY_CONFIG_PATH/containers/bind-dns/etc/bind:/etc/bind --name dns ehudkaldor/bind-dns)
sudo ./pipework br0 $DNS_CONTAINER $DNS_IP/$NETMASK_PREFIX
