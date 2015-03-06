#!/bin/sh

echo setup test-portlet
mkdir -p  ~/Documents/aipo/intern
mvn eclipse:add-maven-repo -Declipse.workspace=~/Documents/aipo/intern

echo clone test-portlet
cd ~/Documents/aipo/GitHub
git clone https://github.com/aipocom/test-portlet.git
cd~/Documents/aipo/GitHub/test-portlet
mvn install
