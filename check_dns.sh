#!/bin/sh

file_hosts="/etc/hosts"
HOSTS="$(cat $file_hosts)"
site_a="site_a.com"
site_b="site_b.com"
site_c="site_c.com"


if [[ -z $(echo $HOSTS | grep "$site_a") ]]; then
    echo "1.1.1.1 $site_a" >> $file_hosts
fi
if [[ -z $(echo $HOSTS | grep "$site_b") ]]; then
    echo "1.1.1.2 $site_b" >> $file_hosts
fi
if [[ -z $(echo $HOSTS | grep "$site_c") ]]; then
    echo "1.1.1.3 $site_c" >> $file_hosts
fi
