#!/bin/bash
>&2 echo "Don't just run this! Read the commands and run what you want/need"
exit(1)

# cp dotfiles
cp -r ./dotfiles/ $HOME/

# install command line tools
xcode-select --install

# install homebrew
# https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install wget
brew install wget

#install git
brew install git
brew link --force git

# install git_lfs
# https://git-lfs.github.com/
brew install git-lfs
git lfs install

# install python3
brew install python

# install bash completion
brew install bash-completion

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# install z
git clone --depth 1 https://github.com/rupa/z.git ~/z

#install nvm 
https://github.com/creationix/nvm#manual-install

#install npm
nvm install-latest-npm

#install awscli
# pip install awscli

#install localstack 
# https://github.com/localstack/localstack
pip install --user localstack

# install terraform
brew install terraform

# install jq
brew install jq

# install tree
brew install tree

## APPLICATIONS ##

# install iterm2
# https://www.iterm2.com/
ITERM_VERSION=iTerm2-3_2_5.zip
wget https://iterm2.com/downloads/stable/$ITERM_VERSION
unzip $ITERM_VERSION
mv iTerm.app ~/Applications/


# install Spectacle
# https://www.spectacleapp.com/

# install vs code
# https://code.visualstudio.com/


# install sublime
# http://www.sublimetext.com/3

# Symlink sublime to be launched from terminal
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl


# install slack