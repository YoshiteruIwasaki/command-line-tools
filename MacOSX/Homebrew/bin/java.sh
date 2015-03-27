#!/bin/sh

echo install java8
brew cask install java
echo install maven2
brew install maven2
brew unlink maven2
brew install maven
echo install ant
brew install ant

touch ~/.bash_profile

echo JAVA_HOME指定
echo export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`  >> ~/.bash_profile
echo PATH=${JAVA_HOME}/bin:${PATH}  >> ~/.bash_profile

source ~/.bash_profile
