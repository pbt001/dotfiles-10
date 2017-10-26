#!/bin/bash

# Install RVM
curl -sSL https://get.rvm.io | bash -s stable --ruby

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Taps
brew tap neovim/neovim
brew tap thoughtbot/formulae
brew tap caskroom/cask
brew tap caskroom/versions
brew tap eddieantonio/eddieantonio

# Installs
brew install 'automake'
brew install 'asciinema'
brew install 'calc'
brew install 'cmake'
brew install 'coreutils'
brew install 'cowsay'
brew install 'ctags'
brew install 'editorconfig'
brew install 'ffmpeg'
brew install 'fortune'
brew install 'git'
brew install 'git-flow'
brew install 'git-standup'
brew install 'grip'
brew install 'go'
brew install 'imgcat'
brew install 'jp2a'
brew install 'koekeishiya/formulae/kwm'
brew install 'libksba'
brew install 'lua'
brew install 'less'
brew install 'mas'
brew install 'mongodb'
brew install 'mysql'
brew install 'neofetch'
brew install 'neovim/neovim/neovim'
brew install 'perl'
brew install 'python'
brew install 'python3'
brew install 'reattach-to-user-namespace'
brew install 'rcm'
brew install 'source-highlight'
brew install 'the_silver_searcher'
brew install 'thoughtbot/formulae/rcm'
brew install 'tmux'
brew install 'trash'
brew install 'tree'
brew install 'watchman'
brew install 'youtube-dl'
brew install 'yarn' --without-node

# Casks
brew cask install 'android-studio'
brew cask install 'atom'
brew cask install 'coda'
brew cask install 'dash'
brew cask install 'dashlane'
brew cask install 'dropbox'
brew cask install 'firefox'
brew cask install 'flux'
brew cask install 'focus'
brew cask install 'google-chrome'
brew cask install 'google-play-music-desktop-player'
brew cask install 'hyper'
brew cask install 'iterm2-nightly'
brew cask install 'rocket'
brew cask install 'sketch'
brew cask install 'skype'
brew cask install 'slack'
brew cask install 'subtitles'
brew cask install 'telegram'
brew cask install 'vanilla'
