#!/bin/sh

set -e

echo "hosts allow = $HOSTS_ALLOW" >> /etc/rsyncd.conf
rm -fr /var/run/rsyncd.pid
/usr/bin/rsync --daemon --no-detach
