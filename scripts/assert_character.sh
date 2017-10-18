#!/bin/bash
# This program shows the user's choice
read -p "Please input(Y/N): " yn
[ "$yn" == "Y" -o "$yn" == "y" ] && echo "OK, continue" && exit 0
