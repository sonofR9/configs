#!/bin/bash

# Ensure XDG_RUNTIME_DIR is set
if [ -z "$XDG_RUNTIME_DIR" ]; then
    export XDG_RUNTIME_DIR="/tmp/runtime-${USER}"
    mkdir -p "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"
fi

# Start Xvfb in the background
Xvfb :1 -screen 0 1024x768x24 &

# Wait for Xvfb to initialize
sleep 2

# Set the DISPLAY environment variable
export DISPLAY=:1

# Ensure the DISPLAY variable is available to subsequent processes
# echo "export DISPLAY=:99" >> ~/.bashrc

