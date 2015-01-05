#!/bin/sh

echo アプリケーションをインストール
echo install wget
brew install wget
echo install google-chrome
brew cask install google-chrome
echo 日本語対応設定
echo -  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US'
echo +  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=ja-JP-mac'
echo に変更を行ってください
brew cask edit firefox
echo install firefox
brew cask install firefox
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
echo install sophos-anti-virus-home-edition
brew cask install sophos-anti-virus-home-edition

touch ~/.bash_profile
#ANDROID_HOME先指定
echo ANDROID_HOME先指定
echo export ANDROID_HOME=/usr/local/opt/android-sdk >> ~/.bash_profile

source ~/.bash_profile

echo インストールされていなければ以下もインストールしてください
echo brew install vim
echo brew install git
