#!/bin/sh

if [ -n "$1" ] && [ $1 -eq 1 ] ; then
        # Initial installation
        systemctl --no-reload preset pushgateway.service &>/dev/null || :
fi