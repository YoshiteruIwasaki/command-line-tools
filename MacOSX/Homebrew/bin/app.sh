#!/bin/sh

echo アプリケーションをインストール
brew cask install google-chrome
echo 日本語対応設定
echo -  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US'
echo +  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=ja-JP-mac'
brew cask edit firefox
brew cask install firefox
brew cask install google-japanese-ime
brew cask install pgadmin3
brew cask install mysqlworkbench
brew cask install eclipse-ide
brew cask install cyberduck
brew cask install coteditor
brew cask install libreoffice
brew cask install virtualbox
brew install android-sdk
brew install app-engine-java-sdk
brew install wget

#ANDROID_HOME先指定
echo ANDROID_HOME先指定
echo export ANDROID_HOME=/usr/local/opt/android-sdk >> ~/.bash_profile

source ~/.bash_profile

echo インストールされていなければ以下もインストールしてください
echo brew install vim
echo brew install git
