#!/bin/bash

# Terminal 1: cmatrix
xfce4-terminal --title="CMatrix" -e "bash -c 'cmatrix; exec bash'" &

# Terminal 2: screenfetch
xfce4-terminal --title="Screenfetch" -e "bash -c 'screenfetch; exec bash'" &
