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

# Pull in all subs & branches
updateAll() {
	updateAllBranches
	updateAllSubs
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

	# Check whether to make a Github or Bitbucket repo
	read "repoType?[g]ithub or [b]itbucket? [g]: "
	repotype=${repoType:-g}

	# Read in Git username (defaults to global name defined in ~/.dotfiles/git/gitconfig.symlink)
	read "username?Username ($GIT_USER): "
	username=${username:-$GIT_USER}

	# Read in name name (defaults current folder name)
	dir=${PWD##*/}
	read "reponame?Repo name($dir): "
	reponame=${reponame:-$dir}

	# Get Bitbucket password right away (Git will prompt you)
	read "password?Password: "

	# Create new remote repo

	if [[ "$repotype" == "g" ]]
	then
		echo 'Creating new Github repo.'

		# Create Github repo
		git init
		curl -u $username:$password https://api.github.com/user/repos -d "{\"name\":\"$reponame\"}"

		# Add remote
		git remote add origin https://github.com/${username}/${reponame// /-}.git
	else
		echo 'Creating new Bitbucket repo.'

		# Create Bitbucket repo
		git init
		curl --user $username:$password https://api.bitbucket.org/1.0/repositories/ --data name=$reponame --data is_private='true'

		# Add remote
		git remote add origin https://${username}@bitbucket.org/${username}/${reponame// /-}.git
	fi

	# Initialize local git repo
	git add -A
	git commit -m "First commit"
	git push -u origin master
}

delb() {
	git branch -D $1
	git push origin :$1
}


archiveBranch() {
	if [ "$1" != "" ]; then
		git tag archive/$1 $1
		delb $1
	else
		echo "Please specify a branch"
	fi

	git push origin --tags
}
