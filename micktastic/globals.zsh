#
# Define global variables
#

# Sites directory
export SITES=~/Sites
export DOTFILES=~/.dotfiles

# VVV directory
export VAGRANT=~/vagrant-local

# Otto directory
export OTTO=~/otto

# NerdWallet
export NWVAGRANT=$SITES/NerdWallet/dev-vagrant/vmware
export NW=/srv/nerdwallet
export NWSITE=$NW/app-site
export NWBLOG=$NWSITE/blog
export NWPLUGS=$NWBLOG/wp-content/plugins
export NWTHEMES=$NWBLOG/wp-content/themes

#Git
export GIT_USER=$(git config --get user.name)
export GIT_EMAIL=$(git config --get user.email)