#!/bin/bash
# 
# INSTALL PAQ BINARIES ==========================================================================
#
sudo apt-get install g++-multilib
git clone https://github.com/JohannesBuchner/paq.git
cd paq
make
chmod +x *.exe
#
# ===============================================================================================
