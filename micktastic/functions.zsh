#
# Functions
#

# Open hosts file
hosts() {
	sudo nano -e /private/etc/hosts
}

# Flush DNS
flush() {
	sudo killall -HUP mDNSResponder
}

# Show hidden files
showFiles() {
	defaults write com.apple.finder AppleShowAllFiles TRUE
	killall	Finder
}

# Hide hidden files
hideFiles() {
	defaults write com.apple.finder AppleShowAllFiles FALSE
	killall Finder
}

# Toggle hidden files visiblity
toggleFiles() {

	# Check if hidden files are visible and store result in a variable
	isVisible=$(defaults read com.apple.finder AppleShowAllFiles)

	# Toggle visibility based on variables value
	if [ $isVisible = FALSE ]
	then
		showFiles
	else
		hideFiles
	fi

}