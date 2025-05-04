#!/bin/bash

username=$USER
home_dir=$HOME
shell=$SHELL
hostname=$(hostname)

ipaddress=$(ip -4 addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n 1)

# Display the details
echo "Username: $username"
echo "Home Directory: $home_dir"
echo "Shell: $shell"
echo "Hostname: $hostname"
echo "IP address: $ipaddress"
