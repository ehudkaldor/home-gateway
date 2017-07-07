################################################
#
#
#
#
#
################################################

FROM		ehudkaldor/alpine-s6-rpi:latest
MAINTAINER	Ehud Kaldor <ehud@unfairfunction.org>

RUN 		apk add --update dhcp && \
		rm -rf /var/cache/apk/*

# VOLUME	/var/lib/dhcp/ && \
RUN		mkdir -p /var/lib/dhcp/ && \
		touch /var/lib/dhcp/dhcpd.leases

COPY 		rootfs /

RUN     	ln -s /bin/s6-true /etc/services.d/isc-dhcp/finish


#USER		root

ENTRYPOINT	["/init"]

