#!/bin/sh

if [ $1 -eq 0 ] ; then
        # Package removal, not upgrade
        systemctl --no-reload disable --now pg_exporter.service &>/dev/null || :
fi