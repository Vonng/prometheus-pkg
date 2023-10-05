#!/bin/sh

if [ $1 -eq 1 ] ; then
        # Initial installation
        systemctl --no-reload preset alertmanager.service &>/dev/null || :
fi