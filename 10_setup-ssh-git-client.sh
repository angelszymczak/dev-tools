#!/bin/bash

ssh-keygen -t rsa -b 4096 -C "$1"
# Generating public/private rsa key pair.
# Enter file in which to save the key (/home/angel/.ssh/id_rsa): /home/angel/.ssh/github
# Enter passphrase (empty for no passphrase): 
# Enter same passphrase again: 
# Your identification has been saved in github.
# Your public key has been saved in github.pub.

# Start SSH Agent service
eval "$(ssh-agent -s)"
# Agent pid 4723

ssh-add .ssh/github
# Identity added: .ssh/github (.ssh/github)

# Let's install secure clipboard tool
sudo apt-get install xclip -y

# Copy the pulic key content and add it to GitHub SSH settings
xclip -sel clip < ~/.ssh/github.pub

