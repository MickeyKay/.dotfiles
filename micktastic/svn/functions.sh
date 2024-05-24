#
# SVN Functions
#

# Colorized vim SVN diff
svndiff() {
	svn diff @{-$1} | view -
}