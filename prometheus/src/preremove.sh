#!/bin/sh

if [ -n "$1" ] && [ $1 -eq 0 ] ; then
    # Package removal, not upgrade
    systemctl --no-reload disable --now prometheus.service &>/dev/null || :
fi