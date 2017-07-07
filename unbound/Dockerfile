################################################
#
#
#
#
#
################################################

FROM		ehudkaldor/alpine-s6-rpi:latest
MAINTAINER	Ehud Kaldor <ehud@unfairfunction.org>

RUN 		apk add --update unbound ca-certificates openssl && \
		rm -rf /var/cache/apk/*

COPY 		rootfs /

RUN     	ln -s /bin/s6-true /etc/services.d/unbound/finish


#USER		root

ENTRYPOINT	["/init"]

