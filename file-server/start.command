#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

docker kill file-server
docker rm file-server
FILE_CONTAINER=$(	\
			docker run -d \
			--privileged \
			-p 111:111 -p 111:111/udp \
			-p 2049:2049 -p 2049:2049/udp \
			-v /home/ehud/docker/home-gateway/file-server/exports:/etc/export:ro \
			-v /home/ehud/docker/home-gateway/file-server/export:/var/export \
			--name file-server \
			--name file-server \
			ehudkaldor/file-server \
		)
echo $FILE_CONTAINER
sudo $PIPEWORK br0 $FILE_CONTAINER dhclient 
