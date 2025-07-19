#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    USER_HOME="$HOME"
else
    USER_HOME="/home/${SUDO_USER}"
fi

if [[ ! -f "$USER_HOME/.commands.conf" ]] ; then
  echo "No commands found, using default"
  cp commands.conf "$USER_HOME/.commands.conf"
else
  echo "Existing commands file found"
fi
