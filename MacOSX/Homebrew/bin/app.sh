#!/bin/sh

echo アプリケーションをインストール
echo install wget
brew install wget
echo install xquartz
brew cask install xquartz
echo install avast
brew cask install avast
echo install google-chrome
brew cask install google-chrome
echo install firefox-ja
brew cask install firefox-ja
echo install google-japanese-ime
brew cask install google-japanese-ime
echo install cyberduck
brew cask install cyberduck
echo install coteditor
brew cask install coteditor
#brew cask install libreoffice
echo install android-sdk
brew install android-sdk
echo install app-engine-java-sdk
brew install app-engine-java-sdk

touch ~/.bash_profile
#ANDROID_HOME先指定
echo ANDROID_HOME先指定
echo export ANDROID_HOME=/usr/local/opt/android-sdk >> ~/.bash_profile

source ~/.bash_profile

echo インストールされていなければ以下もインストールしてください
echo brew install vim
echo brew install git
