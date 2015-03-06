#!/bin/sh

echo install java6
brew cask install java6
echo install maven2
brew install maven2
brew unlink maven2
brew install maven
echo install ant
brew install ant

#Install Java7 for Eclipse
echo Java7 for Eclipse
wget -P ~/Downloads/ --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-macosx-x64.dmg
hdiutil mount ~/Downloads/jdk-7u71-macosx-x64.dmg
sudo installer -pkg /Volumes/JDK\ 7\ Update\ 71/JDK\ 7\ Update\ 71.pkg -target /
hdiutil unmount /Volumes/JDK\ 7\ Update\ 71/

#Install Java8 for Eclipse
wget -P ~/Downloads/ --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u31-b13/jdk-8u31-macosx-x64.dmg
hdiutil mount ~/Downloads/jdk-8u31-macosx-x64.dmg
sudo installer -pkg /Volumes/JDK\ 8\ Update\ 31/JDK\ 8\ Update\ 31.pkg -target /
hdiutil unmount /Volumes/JDK\ 8\ Update\ 31/

touch ~/.bash_profile

echo JAVA_HOME指定
echo export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`  >> ~/.bash_profile
echo PATH=${JAVA_HOME}/bin:${PATH}  >> ~/.bash_profile

source ~/.bash_profile
