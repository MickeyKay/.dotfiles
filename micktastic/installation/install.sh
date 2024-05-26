#!/bin/sh
echo 'Installing various packages via Homebrew.'
brew install node
brew install ruby
brew install git
echo $fg[green]'Done installing packages via Homebrew.'$reset_color
echo ''

# Set zsh to default shell
echo 'Setting default shell to zsh'
chsh -s /bin/zsh
