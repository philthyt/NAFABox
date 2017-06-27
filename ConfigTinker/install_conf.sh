################################################
# Under GPL license
#     https://www.gnu.org/licenses/gpl.html
# Authors:	Patrick Dutoit
# 			Laurent Roge
# On June 10 2017
# V0.1
################################################
#!/bin/bash
######
# Statut d'installation
# Installation status
######
touch $(pwd)/install-status.txt
######
# option for apt
######
options="--auto-remove --yes -q"
######
# Install mate
######
if [[ -z $(cat $(pwd)/install-status.txt | grep mate) ]]
then
	$(pwd)/install_base.sh
	echo mate >> $(pwd)/install-status.txt
fi
######
# pré-requis
# pre requisite
######
if [[ -z $(cat install-status.txt | grep prereq) ]]
then
	sudo apt-add-repository -y ppa:mutlaqja/ppa
	sudo apt-add-repository -y ppa:pch/phd2	
	sudo apt update
	sudo apt-get $options install libpangox-1.0-0 libespeak1 libpango1.0-0 \
	libsonic0 espeak-data fonts-freefont-ttf ttf-freefont libjpeg62 libglu1 \
	xplanet espeak qt4-default openssh-server
	echo prereq >> $(pwd)/install-status.txt
fi
######
# Installer les utilitaires
# Install utilities
######
mkdir -p ~/bin
# Modificateur de résolution
# Resolution modifier
$(pwd)/install_setres.sh
######
# Install conf updater
######
cp update_conf.sh ~/bin/.
chmod +x ~/bin/update_conf.sh
sudo ln -sf ~/bin/update_conf.sh /usr/bin/update_conf
sudo cp /usr/share/icons/gnome/32x32/apps/system-software-update.png /usr/share/pixmaps/update_conf.png
# Création de l'icône sur le bureau
$(pwd)/install_shortcut.sh update_conf "mate-terminal -e \"/bin/bash update_conf\"" 
######
# Install/Update conf
######
~/bin/update_conf.sh initial

