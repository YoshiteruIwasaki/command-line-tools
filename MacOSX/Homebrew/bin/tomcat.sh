#!/bin/sh

echo install tomcat6
brew install tomcat6
brew link tomcat6 --force
cd /usr/local/opt/tomcat6/libexec/lib/

#jdbcインストール
echo install jdbc driver
wget http://central.maven.org/maven2/org/postgresql/postgresql/9.3-1102-jdbc3/postgresql-9.3-1102-jdbc3.jar
wget http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.34/mysql-connector-java-5.1.34.jar

echo install tomcat7
brew install tomcat7
brew link tomcat7 --force
cd /usr/local/opt/tomcat7/libexec/lib/

#jdbcインストール
echo install jdbc driver
wget http://central.maven.org/maven2/org/postgresql/postgresql/9.3-1102-jdbc3/postgresql-9.3-1102-jdbc3.jar
wget http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.34/mysql-connector-java-5.1.34.jar
