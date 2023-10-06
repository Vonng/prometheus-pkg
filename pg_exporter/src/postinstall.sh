#!/bin/sh

if [ -n "$1" ] && [ $1 -eq 1 ] ; then
    # Initial installation
    systemctl --no-reload preset pg_exporter.service &>/dev/null || :
fi