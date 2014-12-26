#!/bin/sh

echo Homebrewをインストール
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew tap homebrew/versions
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew update

touch ~/.bash_profile

#インストール先指定
echo インストール先を/Applicationsに変更します
echo export HOMEBREW_CASK_OPTS=¥"--appdir=/Applications¥" >> ~/.bash_profile

source ~/.bash_profile
