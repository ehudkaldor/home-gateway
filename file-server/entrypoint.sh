#!/bin/sh -eu

/usr/sbin/exportfs -r
/sbin/rpcbind --
/usr/sbin/rpc.nfsd -p 34567 |:
/usr/sbin/rpc.mountd -p 34568 -F
