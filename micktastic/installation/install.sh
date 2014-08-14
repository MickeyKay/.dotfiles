#!/bin/sh

#
# Custom Installations
#

VAGRANT_DIR=~/vagrant-local

# 
# Homebrew install items
#
echo 'Installing various Homebrew packages.'
brew install node
brew install zsh
brew install git
echo $fg[green]'Done installing Homebrew packages.'$reset_color
echo ''

# Grunt
echo 'Installing Grunt.'
npm install -g grunt-cli
echo $fg[green]'Done installing Grunt CLI.'$reset_color
echo ''

#
# Varying Vagrant Vagrants
#
echo 'Installing Varying Vagrant Vagrants.'

# Install host updater and triggers plugins
echo 'Installing VVV plugins.'
vagrant plugin install vagrant-hostsupdater
vagrant plugin install vagrant-triggers
echo $fg[green]'Done installing VVV plugins.'$reset_color
echo ''

# Install Vagrant
echo 'Installing VVV.'
if [ ! -d $VAGRANT_DIR ]
then
    git clone git://github.com/Varying-Vagrant-Vagrants/VVV.git $VAGRANT_DIR
else
    echo $fg[red]'VVV is already installed.'$reset_color
fi
echo $fg[green]'Done installing VVV.'$reset_color
echo ''

# Install VVV Dashboard
# https://github.com/topdown/VVV-Dashboard
echo 'Installing VVV Dashboard.'
if [ ! -d $VAGRANT_DIR/www/dashboard ]
then
	git clone https://github.com/topdown/VVV-Dashboard.git  $VAGRANT_DIR/www/dashboard

	# Copy over dashboard PHP and CSS to override the defaults
	cp $VAGRANT_DIR/www/dashboard/dashboard-custom.php $VAGRANT_DIR/www/default/dashboard-custom.php
	cp $VAGRANT_DIR/www/dashboard/style.css $VAGRANT_DIR/www/default/style.css
else
	echo $fg[red]'VVV Dashboard is already installed.'$reset_color
fi
echo $fg[green]'Done installing VVV Dashboard.'$reset_color
echo ''

# Install Vagrant Site Wizard
echo 'Installing Vagrant Site Wizard'
if [ ! -d $VAGRANT_DIR/vvv-site-wizard ]
then
	git clone https://github.com/aliso/vvv-site-wizard.git $VAGRANT_DIR/vvv-site-wizard

	# Symlink vvv command so it's available in the $PATH
	ln -s $VAGRANT_DIR/vvv-site-wizard/vvv /usr/local/bin/vvv

else
	echo $fg[red]'Vagrant Site Wizard is already installed.'$reset_color
fi
echo $fg[green]'Done installing Vagrant Site Wizard.'$reset_color
echo ''
