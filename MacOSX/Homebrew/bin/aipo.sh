#!/bin/sh

echo setup aipo
mkdir -p  ~/Documents/aipo/workspace
mkdir -p  ~/Documents/aipo/GitHub
mvn eclipse:add-maven-repo -Declipse.workspace=~/Documents/aipo/workspace
