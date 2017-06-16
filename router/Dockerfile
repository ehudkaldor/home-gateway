################################################
#
#
#
#
#
################################################

FROM		ehudkaldor/alpine-s6
MAINTAINER	Ehud Kaldor <ehud@unfairfunction.org>

RUN 		apk add --update dhcp bind iptables && \
		rm -rf /var/cache/apk/*

#ADD	        https://raw.github.com/jpetazzo/pipework/master/pipework pipework

#RUN        	chmod +x pipework

# VOLUME	/var/lib/dhcp/ && \
#RUN		mkdir -p /var/lib/dhcp/ && \
#		touch /var/lib/dhcp/dhcpd.leases
#		mkdir -p /etc/dhcp/

COPY 		rootfs /

RUN     	ln -s /bin/s6-true /etc/services.d/dhcp/finish && \
		ln -s /bin/s6-true /etc/services.d/bind/finish 


#USER		root

ENTRYPOINT	["/init"]

