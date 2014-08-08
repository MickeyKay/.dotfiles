#
# Directory Navigation Functions
#

#
# Varying Vagrant Vagrants
#

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
