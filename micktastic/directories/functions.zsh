#
# Directory Navigation Functions
#

# Themes
themes() {
	vvvt
	cd wp-content/themes
}

# Plugin and theme tester
tester() {
	vag
	cd tester/htdocs/wp-content/
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

