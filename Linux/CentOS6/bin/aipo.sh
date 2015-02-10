#!/bin/sh

echo setup aipo
mkdir -p  ~/aipo/workspace
mkdir -p  ~/aipo/GitHub
mvn eclipse:add-maven-repo -Declipse.workspace=~/aipo/workspace

echo clone aipo
cd ~/aipo/GitHub
git clone https://github.com/aipocom/aipo.git

#データベース作成
echo データベースを作成します
#PostgreSQL9.3の場合
create database org001 owner postgres encoding 'UTF8';

psql -Upostgres -d org001 < ~/aipo/GitHub/aipo/sql/postgres/org001.sql

cd ~/aipo/GitHub/aipo
mvn install

sudo cp ~/aipo/war/target/aipo.war /usr/share/tomcat6/webapps/ 
sudo service tomcat6 restart
