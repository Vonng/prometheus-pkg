#!/bin/sh

if [ -n "$1" ] && [ $1 -eq 0 ] ; then
    # Package removal, not upgrade
    systemctl --no-reload disable --now nginx_exporter.service &>/dev/null || :
fi