#!/bin/sh

echo setup test-portlet
mkdir -p  ~/Documents/aipo/intern
mvn eclipse:add-maven-repo -Declipse.workspace=~/Documents/aipo/intern

echo clone test-portlet
cd ~/Documents/aipo/GitHub
git clone https://github.com/aipocom/test-portlet.git
cd ~/Documents/aipo/GitHub/test-portlet
mvn install


#データベース作成
echo データベースを作成します
#PostgreSQL9.3の場合
create database aipo_test owner postgres encoding 'UTF8';
#PostgreSQL9.4の場合
createdb -E UTF8 -O postgres -U postgres aipo_test;

psql -Upostgres -d aipo_test < ~/Documents/aipo/GitHub/test-portlet/sql/postgres/org001.sql
psql -Upostgres -d aipo_test < ~/Documents/aipo/GitHub/test-portlet/sql/postgres/eip_t_test.sql
