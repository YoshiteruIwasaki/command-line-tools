#!/bin/sh

echo install eclipse
brew cask install eclipse-ide
brew cask info eclipse-ide


echo setup eclipse
wget -P ~/Downloads/ http://ftp.jaist.ac.jp/pub/mergedoc/pleiades/4.5/pleiades-e4.5-ultimate_20160312.zip 
cd ~/Downloads/
unzip pleiades-e4.5-ultimate_20160312.zip
sudo cp -r ~/Downloads/pleiades/eclipse/dropins/* /opt/homebrew-cask/Caskroom/eclipse-ide/4.5.2/Eclipse.app/Contents/Eclipse/dropins/
sudo cp -r ~/Downloads/pleiades/eclipse/plugins/* /opt/homebrew-cask/Caskroom/eclipse-ide/4.5.2/Eclipse.app/Contents/Eclipse/plugins/
sudo cp -r ~/Downloads/pleiades/eclipse/features/* /opt/homebrew-cask/Caskroom/eclipse-ide/4.5.2/Eclipse.app/Contents/Eclipse/features/

#eclipse設定変更
#末尾に以下を追記
#-javaagent:../../../dropins/MergeDoc/eclipse/plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar
sudo echo -javaagent:../../../dropins/MergeDoc/eclipse/plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar >> /opt/homebrew-cask/Caskroom/eclipse-ide/4.5.2/Eclipse.app/Contents/Eclipse/eclipse.ini

#EclipseへVelocityWebEditプラグインインストール
wget  -P ~/Downloads/ "http://downloads.sourceforge.net/project/velocitywebedit/velocitywebedit/1.0.8/VelocityWebEdit-1.0.8.zip"
cd ~/Downloads/
unzip VelocityWebEdit-1.0.8.zip
sudo cp -r ~/Downloads/plugins/* /opt/homebrew-cask/Caskroom/eclipse-ide/4.5.2/Eclipse.app/Contents/Eclipse/plugins/

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
echo $HOME/Documents/aipo/GitHub
echo =============================
echo Java
echo インストール済みのJRE
echo Java SE8
echo
echo コンパイラ
echo 1.8
echo =============================
echo Tomcat
echo バージョン
echo バージョン7.x
echo
echo Tomcatホーム
echo /usr/local/opt/tomcat7/libexec
echo
echo JVM設定
echo Java SE8
echo
echo JVMパラメータ
echo -XX:MaxPermSize=128m -Xmx512m -Xms256m -Dsun.nio.cs.map=x-windows-iso2022jp/ISO-2022-JP
echo =============================
echo Android
echo SDKロケーション
echo /usr/local/opt/android-sdk
echo =============================
echo Google
echo Appエンジン
echo /usr/local/opt/app-engine-java-sdk/libexec

