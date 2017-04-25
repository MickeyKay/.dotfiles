#
# NerdWallet
#

export NWVAGRANT=~/dev-vagrant/vmware
export NW=/srv/nerdwallet
export NWWP=$NW/wp
export NWWORDPRESS=$NWWP/wordpress
export NWAPPSITE=$NW/app-site
export NWBLOG=$NWSITE/blog
export NWPLUGS=$NWWORDPRESS/wp-content/plugins
export NWTHEMES=$NWWORDPRESS/wp-content/themes
export NWMU=$NWWORDPRESS/wp-content/mu-plugins
export NWTHEME=$NWWORDPRESS/wp-content/themes/nerdwallet

alias nwvu="nwv && vagrant up"
alias nwvh="nwv && vagrant halt"
alias wpu="nwvu && vagrant up"

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

nwvw() {
	cd $NWVAGRANT/wordpress
}

# Vagrant status
nwvs() {
	nwv && vagrant status
}

# Vagrant status
nwvssh() {
	nwv && vagrant ssh
}

# Appsite
nwapp() {
	cd $NWAPPSITE
}

# Plugins
nwplugs() {
	cd $NWPLUGS
}

# Themes
nwthemes() {
	cd $NWTHEMES
}

nwtheme() {
	cd $NWTHEME
}

# MU Plugins
nwmu() {
	cd $NWMU
}
