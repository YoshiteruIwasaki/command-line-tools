#!/bin/sh

echo Java・ビルドツールインストール
brew cask install java6
brew install maven2
brew install ant

touch ~/.bash_profile

#JAVA_HOME指定
echo JAVA_HOME指定
echo export JAVA_HOME=`/usr/libexec/java_home -v "1.6"`  >> ~/.bash_profile
echo PATH=${JAVA_HOME}/bin:${PATH}  >> ~/.bash_profile

source ~/.bash_profile

#Install Java7 for Eclipse
wget -P ~/Downloads/ --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-macosx-x64.dmg
hdiutil mount ~/Downloads/jdk-7u71-macosx-x64.dmg
sudo installer -pkg /Volumes/JDK\ 7\ Update\ 71/JDK\ 7\ Update\ 71.pkg -target /
hdiutil unmount /Volumes/JDK\ 7\ Update\ 71/

#eclipse設定変更
#先頭に以下を追記
#-vm
#/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home/bin/java
sed -e "1i /Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home/bin/java" /Applications/Eclipse.app/Contents/MacOS/eclipse.ini
sed -e "1i -vm" /Applications/Eclipse.app/Contents/MacOS/eclipse.ini
