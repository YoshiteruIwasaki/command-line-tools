#!/bin/sh

echo Install postgresql
brew rm postgresql --force
brew install postgresql
#自動起動設定
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
#ユーザー作成
echo ユーザーを作成します。パスワードを設定してください
createuser -s -P postgres
#データベース作成
echo データベースを作成します
create database org001 owner postgres encoding 'UTF8';
