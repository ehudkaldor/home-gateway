################################################
#
#
#
#
#
################################################

FROM		alpine:3.2
MAINTAINER	Ehud Kaldor <ehud@unfairfunction.org>

RUN 		apk add --update bind && \
		rm -rf /var/cache/apk/* 

ADD	        https://raw.github.com/jpetazzo/pipework/master/pipework pipework

RUN        	chmod +x pipework

EXPOSE		53

VOLUME		/var/cache/bind

entrypoint	\
                echo Waiting for pipework to give us the eth1 interface... &&\
                ./pipework --wait && \
		echo Starting bind dns server
		ls -la /etc/bind && \
		exec /usr/sbin/named -4 -g
