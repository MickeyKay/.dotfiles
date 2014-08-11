#!/bin/sh

#
# Custom Installations
#
# As per various smart people's suggestions, use Homebrew
# to get more up-to-date versions of all these goodies.

# Git (via Homebrew)
brew install git

# ZSH (via Homebrew)
brew install zsh

#
# Varying Vagrant Vagrants
#
echo 'Installing Varying Vagrant Vagrants.'

# Install host updater and triggers plugins
echo 'Installing VVV plugins.'
vagrant plugin install vagrant-hostsupdater
vagrant plugin install vagrant-triggers
echo 'Done installing VVV plugins.'

# Install Vagrant
echo 'Installing VVV.'
if [ ! -d ~/vagrant-local ]
then
    git clone git://github.com/Varying-Vagrant-Vagrants/VVV.git ~/vagrant-local
else
    echo 'VVV is already installed.'
fi
echo 'Done installing VVV.'

# Install Vagrant Site Wizard
echo 'Installing Vagrant Site Wizard.'
if [ ! -d $ZSH/vvv-site-wizard ]
then
	git clone https://github.com/aliso/vvv-site-wizard.git $ZSH/bin/vvv-site-wizard
else
	echo 'Vagrant Site Wizard is already installed.'
fi
echo 'Done installing Vagrant Site Wizard.'
