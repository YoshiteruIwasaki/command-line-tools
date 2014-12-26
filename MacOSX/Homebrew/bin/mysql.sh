#!/bin/sh

echo Install mysql
brew install mysql
brew cask install mysqlworkbench
#設定変更
sudo cp resources/my.cnf /usr/local/etc/my.cnf
#自動起動設定
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
#パスワード設定
echo rootのパスワード（推奨:aipo）を設定してください
sudo mysql_secure_installation
