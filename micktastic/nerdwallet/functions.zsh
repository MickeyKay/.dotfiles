#
# NerdWallet
#

export NWVAGRANT=~/dev-vagrant/vmware
export NW=/srv/nerdwallet
export NWWP=$NW/wp
export NWSITE=$NW/app-site
export NWBLOG=$NWSITE/blog
export NWPLUGS=$NWBLOG/wp-content/plugins
export NWTHEMES=$NWBLOG/wp-content/themes

alias nwvu="nwv && vagrant up"
alias nwvh="nwv && vagrant halt"

# Blog
nwb() {
	cd $NWBLOG
}

# WP Dev (should be symlinked from blog)
nwp() {
	cd $NWWP
}

# Vagrant
nwv() {
	cd $NWVAGRANT
}

# Vagrant status
nwvs() {
	nwv && vagrant status
}

# Vagrant status
nwvssh() {
	nwv && vagrant ssh
}

# Plugins
nwplugs() {
	cd $NWPLUGS
}

# Themes
nwthemes() {
	cd $NWTHEMES
}
