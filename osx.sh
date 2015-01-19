# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# cask for brew
brew tap phinze/cask
brew install brew-cask

# cask versions
brew tap caskroom/versions

# wget
brew install wget

# python (pip)
brew install python

# install zsh
brew install zsh

# quicksilver
brew cask install quicksilver

# st3
brew cask install sublime-text3

# st3 package control plugin
curl https://sublime.wbond.net/Package%20Control.sublime-package -o ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package

# git
brew install git

# p4merge
brew cask install p4merge

# git configuration
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global push.default matching
git config --global core.safecrlf false
git config --global merge.keepBackup false;
git config --global merge.tool p4merge;
git config --global mergetool.p4merge.cmd p4merge "\"$BASE\" \"$LOCAL\" \"$REMOTE\" \"$MERGED\""
git config --global mergetool.p4merge.keepTemporaries false
git config --global mergetool.p4merge.trustExitCode false
git config --global mergetool.p4merge.keepBackup false
git config --global mergetool.p4merge.prompt false
git config --global mergetool.keepBackup false

# nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# node
nvm install 0.10.23
nvm alias default 0.10.23

# add author info to npm
echo "Adding npm publisher information"
npm set init.author.name "$NAME"
npm set init.author.email "$EMAIL"
npm adduser

# npm global CLI treats
npm install -g json
npm install -g jshint
npm install -g bower
npm install -g yo
npm install -g grunt-cli
npm install -g grunt-init
npm install -g nodemon
npm install -g browserify
npm install -g watchify
npm install -g testling

# mongodb
brew install mongodb

# mongodb-as-a-service on startup and right now
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

# phantomjs
brew install phantomjs

# chrome
brew cask install google-chrome

# skype
brew cask install skype

# openoffice
brew cask install openoffice

# refresh any finder windows
killall Finder
