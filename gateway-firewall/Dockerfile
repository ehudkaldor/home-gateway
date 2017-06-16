################################################
#
#	A network gateway based on iptables
#
#
#
################################################

<<<<<<< HEAD
FROM		alpine:3.2
=======
FROM		ehudkaldor/alpine-rpi
>>>>>>> router/master
MAINTAINER	Ehud Kaldor <ehud@unfairfunction.org>

RUN 		apk add --update iptables && \
		rm -rf /var/cache/apk/* 
<<<<<<< HEAD

ADD	        https://raw.github.com/jpetazzo/pipework/master/pipework pipework

RUN        	chmod +x pipework

COPY		run.sh /root/run.sh

RUN		chmod 777 /root/run.sh

ENTRYPOINT  \
                echo Waiting for pipework to give us the eth1 interface... &&\
                ./pipework --wait && \
		echo Starting iptables and adding rulez
	        iptables -A FORWARD -p tcp --dport 80 -j ACCEPT && \
       	 	iptables -A FORWARD -j DROP && \
       		/root/run.sh
=======

COPY		rootfs /
>>>>>>> router/master
