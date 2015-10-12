################################################
#
#
#
#
#
################################################

FROM		alpine:3.2
MAINTAINER	Ehud Kaldor <ehud.kaldor@gmail.com>

RUN 		apk add --update dhcp curl iptables && \
		rm -rf /var/cache/apk/* && \
	        curl -sSL -o pipework https://raw.github.com/jpetazzo/pipework/master/pipework && \
        	chmod +x pipework

#ADD		etc/dhcp/dhcpd.conf /etc/dhcpd.conf

RUN		mkdir -p /var/lib/dhcp/ && \ 
		mkdir -p /etc/dhcp/ 
#		touch /var/lib/dhcp/dhcpd.leases

#RUN		ls -la && cat /etc/dhcp/dhcpd.conf && ls -la /sys/class/net/eth1/

USER		root

CMD		\
#   		echo Setting up iptables... && \
#	   	iptables -t nat -A POSTROUTING -j MASQUERADE && \
   		echo Waiting for pipework to give us the eth1 interface... &&\
		ls -la /etc/dhcp && \
   		./pipework --wait && \
   		echo Starting ISC-DHCP server on eth1... && \
		dhcpd -f -cf /etc/dhcp/dhcpd.conf eth1
