#
# Directory Navigation Functions
#

#
# Sites
#

# Top directory
sites() {
	cd $SITES
}

# VVV (www folder)
vvv() {
	cd $SITES/vagrant-local/www
}

# WordPress Default
vvvd() {
	vvv
	cd wordpress-default
}

# WordPress Trunk
vvvt() {
	vvv
	cd wordpress-trunk
}

# WordPress Dev
vvvv() {
	vvv
	cd wordpress-develop
}

# Plugins folder (assumes you're in the WP root)
plugins() {
	cd wp-content/plugins
}

# Themes folder (assumes you're in the WP root)
themes() {
	cd wp-content/themes
}