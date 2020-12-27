#!/bin/bash

# exit script if return code != 0
set -e

# define pacman packages
pacman_packages="python3 python3-pip"

# install pre-reqs
pacman -Sy --needed $pacman_packages --noconfirm
pip3 install --upgrade setuptools
pip3 install flexget
pip3 install transmissionrpc
pip3 install youtube-dl

# call aor script (arch official repo)
# source /root/aur.sh

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*
