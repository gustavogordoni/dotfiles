#!/bin/bash

MOUNT_DIR="/run/media/$USER"

while true; do
    DEVICES=($(ls -1 "$MOUNT_DIR" 2>/dev/null))

    if [ ${#DEVICES[@]} -gt 0 ]; then
        # Exibe todos os dispositivos montados
        echo "${DEVICES[@]}" | awk '{for(i=1;i<=NF;i++) printf "%s  ", $i; print ""}'
    else
        echo ""
    fi

    sleep 2
done
