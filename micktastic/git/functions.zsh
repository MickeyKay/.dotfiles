#
# Git Functions
#

# Add remote git repo and set 'origin' to it
mkrepo() {

	# Read in destination username and repo name (with default values if left blank)
	read -p "GitHub username (MickeyKay): " username
	username=${username:-MickeyKay}
	read -p "Repo name: " reponame

	# Create new remote repo
	curl -u $username https://api.github.com/user/repos -d "{\"name\":\"$reponame\"}"

	# Add remote repo as local origin (replace spaces in repo name with dashes: ${reponame// /-} )
	# Note: uses https (not SSH)
	git init
	git remote add origin https://github.com/${username}/${reponame// /-}.git

	# Initialize local git repo
	git add -A
	git commit -m "First commit"
	git push -u origin master
}

# Pull all remote Git branches
updateAllBranches() {
	git config --global push.default tracking
	git branch -a | grep -v HEAD | perl -ne 'chomp($_); s|^\*?\s*||; if (m|(.+)/(.+)| && not $d{$2}) {print qq(git branch --track $2 $1/$2\n)} else {$d{$_}=1}' | csh -xfs
}

# Update all submodules (including nested)
updateAllSubs() {
	git submodule update --init --recursive
}