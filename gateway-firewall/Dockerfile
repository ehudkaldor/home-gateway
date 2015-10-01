################################################
#
#	A network gateway based on iptables
#
#
#
################################################

FROM		alpine:3.2
MAINTAINER	Ehud Kaldor <ehud.kaldor@gmail.com>

RUN 		apk add --update iptables && \
		rm -rf /var/cache/apk/* 
#	        curl -sSL -o pipework https://raw.github.com/jpetazzo/pipework/master/pipework && \
#        	chmod +x pipework

COPY		run.sh /root/run.sh

RUN		chmod 777 /root/run.sh

ENTRYPOINT  \
        iptables -A FORWARD -p tcp --dport 80 -j ACCEPT && \
        iptables -A FORWARD -j DROP && \
        /root/run.sh
