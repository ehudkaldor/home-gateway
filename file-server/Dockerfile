################################################
#
#  this is an Alpine Linux based NAS server
#  container, serving files over both NFS
#  and SMB (CIFS)
#
################################################

FROM		alpine:3.4
MAINTAINER	Ehud Kaldor <ehud@unfairfunction.org>

RUN 		apk add --update nfs-utils samba && \
                rm -rf /tmp/* && \
		rm -rf /var/cache/apk/* 

#RUN		mkdir -p /var/export && \
#		echo "/var/export	127.0.0.1(rw,sync)" >> /etc/exports && \
#		rc-update add nfs 
#		exportfs -a

ADD		./entrypoint.sh /entrypoint.sh
ADD		./nfs.conf /etc/conf.d/nfs
ADD		./exports /etc/exports

EXPOSE 		111/tcp 111/udp 2049/tcp 34567/tcp 34567/udp 34568/tcp 34568/udp

CMD		["/entrypoint.sh"]
