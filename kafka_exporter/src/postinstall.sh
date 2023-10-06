#!/bin/sh

if [ $1 -eq 1 ] ; then
        # Initial installation
        systemctl --no-reload preset kafka_exporter.service &>/dev/null || :
fi