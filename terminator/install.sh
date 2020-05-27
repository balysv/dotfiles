#!/bin/sh

if ! command -v "terminator"; then
   echo "Installing Terminator..."
   sudo apt install terminator
else
   echo "Terminator found, not installing..."
fi


