#!/bin/bash

# Update packes
sudo apt-get update
sudo apt-get upgrade

# Setup ssh
vi /etc/ssh/sshd_config

sudo systemctl restart ssh
sudo systemctl enable ssh

sudo systemctl restart ufw
sudo systemctl enable ufw

# Set up fire wall

ufw allow 22


