#!/bin/sh

echo install tomcat7
brew install tomcat7
brew link tomcat7 --force
cd /usr/local/opt/tomcat7/libexec/lib/

#jdbcインストール
echo install jdbc driver
wget http://central.maven.org/maven2/org/postgresql/postgresql/9.3-1101-jdbc41/postgresql-9.3-1101-jdbc41.jar
wget http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.34/mysql-connector-java-5.1.34.jar

echo Cometを有効にします
echo protocol を org.apache.coyote.http11.Http11NioProtocol に変更します。
echo protocol="org.apache.coyote.http11.Http11NioProtocol" 
echo vim /usr/local/opt/tomcat7/libexec/conf/server.xml
