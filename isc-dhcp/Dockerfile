################################################
#
#
#
#
#
################################################

<<<<<<< HEAD
FROM		ehudkaldor/alpine-s6-rpi
=======
FROM		ehudkaldor/alpine-s6-confd
>>>>>>> 04aa3b60c542baeea605113b329b86150f21e894
MAINTAINER	Ehud Kaldor <ehud@unfairfunction.org>

RUN 		apk add --update dhcp && \
		rm -rf /var/cache/apk/*

# VOLUME	/var/lib/dhcp/ && \
RUN		mkdir -p /var/lib/dhcp/ && \
		touch /var/lib/dhcp/dhcpd.leases
<<<<<<< HEAD
#		mkdir -p /etc/dhcp/
=======
>>>>>>> 04aa3b60c542baeea605113b329b86150f21e894

COPY 		rootfs /

RUN     	ln -s /bin/s6-true /etc/services.d/isc-dhcp/finish

<<<<<<< HEAD

#USER		root

ENTRYPOINT	["/init"]

=======
ENTRYPOINT	["/init"]

>>>>>>> 04aa3b60c542baeea605113b329b86150f21e894
