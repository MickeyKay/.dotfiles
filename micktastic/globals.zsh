#
# Define global variables
#

path+=("$HOME/bin")
export PATH

# Sites directory
export SITES=~/Sites
export DOTFILES=~/.dotfiles

# VVV directory
export VAGRANT=~/vagrant-local

# Otto directory
export OTTO=~/otto

#Git
export GIT_USER=$(git config --get user.name)
export GIT_EMAIL=$(git config --get user.email)