#
# Vagrant Aliases
#

#
# Basic
#
alias vn="vagrant"
alias vh="vagrant halt"
alias vs="vagrant status"

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