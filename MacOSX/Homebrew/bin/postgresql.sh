#!/bin/sh

echo Install postgresql
brew rm postgresql --force
brew install postgresql
#自動起動設定
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
#ユーザー作成
echo ユーザーを作成します。パスワード（aipo）を設定してください
createuser -s -P postgres
#データベース作成
echo データベースを作成します
#PostgreSQL9.3の場合
create database org001 owner postgres encoding 'UTF8';
#PostgreSQL9.4の場合
createdb -E UTF8 -O postgres -U postgres org001;
