################################################
#
#
#
#
#
################################################

FROM		alpine:3.2
MAINTAINER	Ehud Kaldor <ehud.kaldor@gmail.com>

RUN 		apk add --update bind && \
		rm -rf /var/cache/apk/* 
#	        curl -sSL -o pipework https://raw.github.com/jpetazzo/pipework/master/pipework && \
#        	chmod +x pipework

ADD		etc/bind /etc/bind

VOLUME		/var/cache/bind

CMD		exec /usr/sbin/named -4 -g
