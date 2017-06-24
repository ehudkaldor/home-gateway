################################################
#
#	A network gateway based on iptables
#
#
#
################################################

FROM		alpine
MAINTAINER	Ehud Kaldor <ehud@unfairfunction.org>

RUN 		apk add --update iptables && \
		rm -rf /var/cache/apk/* 

COPY		run.sh /root/run.sh

RUN		chmod 777 /root/run.sh

COPY		rootfs /

ENTRYPOINT	/root/run.sh
