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

# Themes
themes() {
	vvvt
	cd wp-content/themes
}

# Trestle
trestle() {
	themes
	cd trestle
}

# Plugins
plugs() {
	vvvt
	cd wp-content/plugins
}

#
# Old Structure
#

testPlugs() {
	cd $SITES/WP\ Plugins\ -\ Test/wp-content/plugins
}

finPlugs() {
	cd $SITES/WP\ Plugins\ -\ Final
}

