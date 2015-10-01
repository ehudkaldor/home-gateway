################################################
#
#
#
#
#
################################################

FROM		alpine:3.2
MAINTAINER	Ehud Kaldor <ehud.kaldor@gmail.com>

RUN 		apk add --update nfs-utils samba && \
		rm -rf /var/cache/apk/* && \
		rc-update add nfs 

#	        curl -sSL -o pipework https://raw.github.com/jpetazzo/pipework/master/pipework && \
#        	chmod +x pipework

ENTRYPOINT	ls -la /etc/export
