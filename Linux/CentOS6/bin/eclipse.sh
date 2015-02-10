#!/bin/sh

echo install eclipse
wget http://ftp.jaist.ac.jp/pub/eclipse/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-linux-gtk-x86_64.tar.gz 
tar xvzf eclipse-jee-kepler-SR2-linux-gtk-x86_64.tar.gz 
sudo mv eclipse /usr/share

wget http://ftp.jaist.ac.jp/pub/mergedoc/pleiades/4.3/pleiades-e4.3-java_20140321.zip 
unzip pleiades-e4.3-java_20140321.zip 
sudo \cp -rf pleiades/eclipse/dropins/* /usr/share/eclipse/dropins/ 
sudo \cp -rf pleiades/eclipse/plugins/* /usr/share/eclipse/plugins/ 
sudo \cp -rf pleiades/eclipse/features/* /usr/share/eclipse/features/

#eclipse設定変更
#末尾に以下を追記
#-javaagent:dropins/MergeDoc/eclipse/plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar
sudo echo -javaagent:dropins/MergeDoc/eclipse/plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar >> /usr/share/eclipse/eclipse.ini

echo Eclipseからアップデートサイトを設定する形で以下をインストールしてください
echo
echo Google Plugin for Eclipse
echo https://dl.google.com/eclipse/plugin/4.4
echo
echo Slim3 Eclipse Plugin
echo http://slim3.googlecode.com/svn/updates/
echo
echo AWS Toolkit for Eclipse
echo http://aws.amazon.com/jp/eclipse
echo
echo StartExplorer Eclipse Plug-in
echo http://basti1302.github.com/startexplorer/update/
echo
echo =============================
echo Eclipseの環境設定を行ってください
echo Git
echo デフォルトリポジトリフォルダ
echo ~/aipo/GitHub
echo =============================
echo Java
echo インストール済みのJRE
echo Java SE6
echo
echo コンパイラ
echo 1.6
echo =============================
echo Tomcat
echo バージョン
echo バージョン6.x
echo
echo Tomcatホーム
echo /usr/share/tomcat6
echo
echo JVM設定
echo Java SE6
echo
echo JVMパラメータ
echo -XX:MaxPermSize=128m -Xmx512m -Xms256m -Dsun.nio.cs.map=x-windows-iso2022jp/ISO-2022-JP

echo GUI起動
startx




