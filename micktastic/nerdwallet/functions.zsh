#
# Directory Navigation Functions
#

# Blog
nwblog() {
	cd $NWBLOG
}

# Vagrant
nwvag() {
	cd $NWVAGRANT
}

# Plugins
nwplugs() {
	cd $NWPLUGS
}

# Themes
nwthemes() {
	cd $NWTHEMES
}

alias nwvu="nwvag && vagrant up"
alias nwvh="nwvag && vagrant halt"
alias nwvs="nwvag && vagrant status"

