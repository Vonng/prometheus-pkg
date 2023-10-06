#!/bin/sh

if [ -n "$1" ] && [ $1 -eq 1 ] ; then
    # Initial installation
    systemctl --no-reload preset keepalived_exporter.service &>/dev/null || :
fi