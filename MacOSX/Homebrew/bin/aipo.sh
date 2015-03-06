#!/bin/sh

echo setup aipo
mkdir -p  ~/Documents/aipo/workspace
mkdir -p  ~/Documents/aipo/GitHub
mvn eclipse:add-maven-repo -Declipse.workspace=~/Documents/aipo/workspace

echo clone aipo
cd ~/Documents/aipo/GitHub
git clone https://github.com/aipocom/aipo.git
git clone https://github.com/aipocom/aipo-opensocial.git

cd ~/Documents/aipo/GitHub/aipo
mvn install

cd ~/Documents/aipo/GitHub/aipo-opensocial
mvn install

#データベース作成
echo データベースを作成します
#PostgreSQL9.3の場合
create database org001 owner postgres encoding 'UTF8';
#PostgreSQL9.4の場合
createdb -E UTF8 -O postgres -U postgres org001;

psql -Upostgres -d org001 < ~/Documents/aipo/GitHub/aipo/sql/postgres/org001.sql
