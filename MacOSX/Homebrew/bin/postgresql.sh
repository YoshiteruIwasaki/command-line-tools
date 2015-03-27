#!/bin/sh

echo Install postgresql
brew rm postgresql --force
brew install postgresql93
brew cask install pgadmin3
#自動起動設定
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
#ユーザー作成
echo ユーザーを作成します。パスワード（推奨:aipo）を設定してください
createuser -s -P postgres
