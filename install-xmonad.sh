#!/bin/bash
# 
# Installation script which setup up an Ubuntu Trusty machine to use this
# xmonad configuration. 
#
# WARNING!!! 
# * This has only been tested on a limited number of machines running 
#   Ubuntu 14.04 64-bit.
# * This is not a sophisticated installation script by any stretch 
#   of the imagination. 
# * I take no responsibility if this overwrites any configuration settings 
#   or otherwise messes up your system. 
#
# Please review the readme file to find out exactly what it does and does not 
# do. Or, visit the repository for more information: 
# https://github.com/davidbrewer/xmonad-ubuntu-conf
# 
# Author: David Brewer

script_folder="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#echo "Adding PPA to allow install of Synapse on Trusty"
#sudo apt-add-repository ppa:synapse-core/testing
#sudo apt-get update

# echo "Installing required packages..."
# sudo apt-get install xmonad libghc-xmonad-dev libghc-xmonad-contrib-dev xmobar xcompmgr nitrogen stalonetray moreutils consolekit synapse ssh-askpass-gnome thunar terminator remmina
sudo apt-get install hsetroot

echo "Creating xmonad xsession configuration..."
#sudo mv /usr/share/xsessions/xmonad.desktop /usr/share/xsessions/xmonad.desktop.original
sudo cp xmonad-alknaion.session /usr/share/gnome-session/sessions/
sudo cp xmonad-alknaion.desktop.xsession /usr/share/xsessions/xmonad-alknaion.desktop
sudo cp xmonad-alknaion.desktop.application /usr/share/applications/xmonad-alknaion.desktop
sudo cp gnome-xmonad-alknaion.desktop /usr/share/xsessions/
sudo cp images/custom_xmonad_badge.png /usr/share/unity-greeter/
sudo cp images/custom_xmonad_badge.png /usr/share/icons/
ln -fs $script_folder/xmonad-start.sh ~/.xmonad/xmonad-start.sh
ln -fs $script_folder/get-volume.sh ~/.xmonad/get-volume.sh
echo "Linking to customized gnome 2 configuration..."
mv -f ~/.gtkrc-2.0 ~/.gtkrc-2.0.original
ln -fs $script_folder/.gtkrc-2.0 ~/.gtkrc-2.0

