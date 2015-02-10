#!/bin/sh

echo install java6
sudo yum install -y java-1.6.0-openjdk-devel

echo install maven2
wget http://archive.apache.org/dist/maven/binaries/apache-maven-2.2.1-bin.tar.gz 
tar xvzf apache-maven-2.2.1-bin.tar.gz 
sudo mv apache-maven-2.2.1 /usr/share 
sudo ln -s /usr/share/apache-maven-2.2.1 /usr/share/maven

touch ~/.bash_profile

echo JAVA_HOME指定
echo export JAVA_HOME=/usr/lib/jvm/jre-1.6.0-openjdk.x86_64  >> ~/.bash_profile
echo export MAVEN_HOME=/usr/share/maven  >> ~/.bash_profile
echo PATH=${JAVA_HOME}/bin:${MAVEN_HOME}/bin:${PATH}  >> ~/.bash_profile

source ~/.bash_profile
