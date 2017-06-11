################################################
#
#	A network gateway based on iptables
#
#
#
################################################

FROM		ehudkaldor/alpine-rpi
MAINTAINER	Ehud Kaldor <ehud@unfairfunction.org>

RUN 		apk add --update iptables && \
		rm -rf /var/cache/apk/* 

COPY		rootfs /
