#!/bin/sh

echo install tomcat6
sudo  yum install -y tomcat6 

#jdbcインストール
echo install jdbc driver
sudo wget https://jdbc.postgresql.org/download/postgresql-8.4-703.jdbc3.jar -P /usr/share/tomcat6/lib/ 
sudo ln -s /usr/share/tomcat6/lib/tomcat6-el-2.1-api-6.0.24.jar /usr/share/tomcat6/lib/el-api.jar 
sudo ln -s /usr/share/tomcat6/lib/tomcat6-jsp-2.1-api-6.0.24.jar /usr/share/tomcat6/lib/jsp-api.jar 
sudo ln -s /usr/share/tomcat6/lib/tomcat6-servlet-2.5-api-6.0.24.jar /usr/share/tomcat6/lib/servlet-api.jar
