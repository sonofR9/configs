#!/bin/bash

# Start Xvfb in the background
Xvfb :1 -screen 0 1024x768x24 &


# Wait for Xvfb to initialize
sleep 2

# Set the DISPLAY environment variable
export DISPLAY=:99

# Ensure the DISPLAY variable is available to subsequent processes
# echo "export DISPLAY=:99" >> ~/.bashrc

