#
# Git Functions
#

# Update README.md commit
readme() {
	git commit -am "Update README.md."
	git push
}

# Pull all remote Git branches
updateAllBranches() {
	for remote in `git branch -r | grep -v master `; do git checkout --track $remote ; done
}

# Update all submodules (including nested)
updateAllSubs() {
	git submodule update --init --recursive
}

# Diff local with remote branch
rdiff() {

	# Set default branch to master
	if [ -z "$1" ]
	then
		branch=$(git symbolic-ref --short HEAD)
		echo "No branch specified, defaulting to '$branch'."
	else
		branch=$1
	fi

	# Fetch and diff remote
	git fetch origin
	git diff origin/$branch
}


# Add remote git repo and set 'origin' to it
mkrepo() {

	# Read in Git username (defaults to global name defined in ~/.dotfiles/git/gitconfig.symlink)
	read "username?GitHub username ($GIT_USER): "
	username=${username:-$GIT_USER}

	# Read in name name (defaults current folder name)
	dir=${PWD##*/}
	read "reponame?Repo name($dir): "
	reponame=${reponame:-$dir}

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

# Delete local and remote branch (Format: delb <branch-name>)
delb() {

	# Get branch name from input after 'delb'
	branch=$1

	# Get remote name
	remote=`git remote`

	# Delete local branch
	git branch -d $branch

	# Delete remote branch
	git push $remote :$branch

}