#!/bin/bash

if [[ "$1" == "master" ]]; then
    ipvsadm --stop-daemon=backup
elif [[ "$1" == "backup" ]]; then
    ipvsadm --stop-daemon=master
fi

ipvsadm --start-daemon="$1" --mcast-interface "$2"
