#!/bin/sh

# Handle script parameters
case "$1" in
    configure|1)
        # newly installed
        systemctl --no-reload preset pushgateway.service &>/dev/null || :
        ;;
    *)
        exit 0
        ;;
esac

exit 0