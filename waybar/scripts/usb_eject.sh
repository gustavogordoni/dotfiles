#!/bin/bash

MOUNT_DIR="/run/media/$USER"
DEVICES=($(ls -1 "$MOUNT_DIR" 2>/dev/null))

if [ ${#DEVICES[@]} -eq 0 ]; then
    notify-send "USB Ejetar" "Nenhum dispositivo encontrado para ejetar."
    exit 1
fi

for DEVICE in "${DEVICES[@]}"; do
    DEVICE_PATH="$MOUNT_DIR/$DEVICE"

    # Verifica se o dispositivo está sendo usado
    if lsof +D "$DEVICE_PATH" >/dev/null 2>&1; then
        notify-send "Erro ao ejetar USB" "Pendrive '$DEVICE' está em uso."
        continue
    fi

    # Encontra a partição montada
    PART_NODE=$(findmnt -n -o SOURCE "$DEVICE_PATH" 2>/dev/null)
    if [ -z "$PART_NODE" ]; then
        notify-send "Erro ao ejetar USB" "Não foi possível identificar a partição de '$DEVICE'."
        continue
    fi

    # Desmonta a partição
    if ! udisksctl unmount -b "$PART_NODE" &>/dev/null; then
        # Verifica se algum app está bloqueando
        BLOCKERS=$(lsof +D "$DEVICE_PATH" 2>/dev/null)
        if [ -n "$BLOCKERS" ]; then
            # Pega apenas o nome do comando, remove duplicatas e formata em lista
            FILTERED_BLOCKERS=$(echo "$BLOCKERS" | tail -n +2 | awk '{print $1}' | sort -u | tr '\n' ', ' | sed 's/, $//')

            notify-send "Aplicativos bloqueando: $FILTERED_BLOCKERS"            
        else
            notify-send "Erro ao ejetar USB" "Falha ao desmontar o pendrive '$DEVICE'."
        fi
        continue
    fi

    sleep 1  # Aguarda um pouco para garantir desmontagem

    # Encontra o dispositivo físico correspondente
    DEV_NODE=$(lsblk -no PKNAME "$PART_NODE" 2>/dev/null)
    if [ -z "$DEV_NODE" ]; then
        DEV_NODE=$(basename "$PART_NODE")  # fallback
    fi

    # Desliga o dispositivo físico
    if ! udisksctl power-off -b "/dev/$DEV_NODE" &>/dev/null; then
        notify-send "Erro ao ejetar USB" "Falha ao desligar o pendrive '$DEVICE'."
        continue
    fi

    # Tudo certo
    notify-send "USB Ejetado" "O pendrive '$DEVICE' foi ejetado com sucesso."
done
