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

#RUN		ls /etc/network/ && ip link add eth1

ADD		etc/dhcp/dhcpd.conf /etc/dhcpd.conf

RUN		mkdir -p /var/lib/dhcp/ && touch /var/lib/dhcp/dhcpd.leases
#RUN		ls -la && cat /etc/dhcp/dhcpd.conf && ls -la /sys/class/net/eth1/

USER		root

CMD		\
   		echo Setting up iptables... &&\
	   	iptables -t nat -A POSTROUTING -j MASQUERADE && \
   		echo Waiting for pipework to give us the eth1 interface... &&\
   		./pipework --wait &&\
   		echo Starting ISC-DHCP server on eth1... && \
		dhcpd -f eth1
