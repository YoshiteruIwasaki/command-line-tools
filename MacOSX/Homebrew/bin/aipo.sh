#!/bin/sh

echo setup aipo
mkdir -p  ~/Documents/aipo/workspace
mkdir -p  ~/Documents/aipo/GitHub
mvn eclipse:add-maven-repo -Declipse.workspace=~/Documents/aipo/workspace

echo clone aipo
cd ~/Documents/aipo/GitHub
git clone https://github.com/aipocom/aipo.git

echo setup aipo database
psql -Upostgres -d org001 < ~/Documents/aipo/GitHub/aipo/sql/postgres/org001.sql
