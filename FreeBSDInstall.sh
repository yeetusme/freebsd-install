#!/bin/bash
#Startup script for a fresh install of FreeBSD
#      		!! DO THIS IN A TTY !!		#

pkg -y update && pkg -y upgrade
portupgrade -ra BATCH=YES

pkg install -y wget
pkg install -y xorg
pkg install -y p7zip 
pkg install -y keepassxc 
pkg install -y vim 
pkg install -y htop 
#pkg install -y texlive-full 
pkg install -y virtualbox-ose 
#pkg install -y firefox 
pkg install -y openbox 
pkg install -y obconf 
pkg install -y lxappearance 
pkg install -y lxpanel 
pkg install -y thunar 
pkg install -y transmission 
pkg install -y vifm 
pkg install -y feh 
pkg install -y pinta 
pkg install -y sox 
cd /usr/ports/finance/electrum/ && make install clean BATCH=YES
cd
echo "exec openbox-session" >> ~/.xinitrc

#SUCKLESS TERMINAL##########################################################
wget https://dl.suckless.org/st/st-0.8.4.tar.gz
tar -xvf st-0.8.4.tar.gz
rm st-0.8.4.tar.gz
cd st-0.8.4
make install clean BATCH=yes
############################################################################

feh --bg-fill ~/freebsd-install/win95.jpg
echo "~/.fehbg &" >> ~/.config/openbox/autostart
echo "lxpanel" >> ~/.config/openbox/autostart
