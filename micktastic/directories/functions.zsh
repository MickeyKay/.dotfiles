#
# Directory Navigation Functions
#

#
# Varying Vagrant Vagrants
#

# VVV (www folder)
vag() {
	cd $VAGRANT/www
}

# WordPress Default
vvvd() {
	vag
	cd wordpress-default
}

# WordPress Trunk
vvvt() {
	vag
	cd wordpress-trunk
}

# WordPress Dev
vvvv() {
	vag
	cd wordpress-develop
}

# Plugins
plugs() {
	vvvt
	cd wp-content/plugins
}

# Themes
themes() {
	vvvt
	cd wp-content/themes
}