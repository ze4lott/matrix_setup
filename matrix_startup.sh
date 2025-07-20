#!/bin/bash

# Verifica si los comandos necesarios están instalados
for cmd in cmatrix screenfetch; do
    if ! command -v "$cmd" &>/dev/null; then
        echo "Error: $cmd no está instalado." >&2
        exit 1
    fi
done

# Ejecuta cmatrix y screenfetch en nuevas terminales
xfce4-terminal --title="CMatrix" --command="bash -c 'cmatrix; exec bash'" &
xfce4-terminal --title="Screenfetch" --command="bash -c 'screenfetch; exec bash'" &

