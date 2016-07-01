#
# NerdWallet
#

export NWVAGRANT=~/dev-vagrant/vmware
export NW=/srv/nerdwallet
export NWSITE=$NW/app-site
export NWBLOG=$NWSITE/blog
export NWPLUGS=$NWBLOG/wp-content/plugins
export NWTHEMES=$NWBLOG/wp-content/themes

# Blog
nwb() {
	cd $NWBLOG
}

# Vagrant
nwv() {
	cd $NWVAGRANT
}

# Vagrant status
nwvs() {
	nwv && vagrant status
}

# Plugins
nwplugs() {
	cd $NWPLUGS
}

# Themes
nwthemes() {
	cd $NWTHEMES
}

alias nwvu="nwv && vagrant up"
alias nwvh="nwv && vagrant halt"
alias nwvs="nwv && vagrant status"

