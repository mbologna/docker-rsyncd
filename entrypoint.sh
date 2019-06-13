#!/bin/sh

set -e

echo "hosts allow = $HOSTS_ALLOW" >> /etc/rsyncd.conf
/usr/bin/rsync --daemon --no-detach
