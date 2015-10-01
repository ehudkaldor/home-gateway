#!/bin/bash
docker kill dns
docker rm dns
DNS_CONTAINER=$(docker run -d --privileged -v ./etc/bind:/etc/bind --name dns ehudkaldor/bind-dns)
sudo ./pipework br0 $DNS_CONTAINER 10.5.5.3/24
