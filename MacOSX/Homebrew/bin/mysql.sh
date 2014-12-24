#!/bin/sh

echo Install mysql
brew install mysql
#設定変更
sudo cp resources/my.cnf /usr/local/etc/my.cnf
#自動起動設定
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
#パスワード設定
echo パスワードを設定してください
sudo mysql_secure_installation
