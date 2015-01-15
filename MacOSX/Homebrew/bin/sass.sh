#!/bin/sh

echo setup sass

echo install webstorm
brew cask install webstorm
echo install node
brew install node
echo install grunt
npm install --g grunt grunt-cli grunt-init grunt-contrib bower gulp

echo install sass
sudo gem install sass
echo install compass
sudo gem install compass
