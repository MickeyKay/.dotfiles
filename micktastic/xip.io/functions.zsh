#
# ngrok Functions
#

# Open xip.io site for remote testing.
xipio() {
	/usr/bin/open -a "/Applications/Google Chrome.app" "http://$1.192.168.50.4.xip.io"
}