#!/bin/sh

echo setup eclipse
wget -P ~/Downloads/ http://ftp.jaist.ac.jp/pub/mergedoc/pleiades/4.4/pleiades-e4.4-ultimate_20140926.zip
cd ~/Downloads/
unzip pleiades-e4.4-ultimate_20140926.zip
sudo cp -r ~/Downloads/pleiades/eclipse/dropins/* /opt/homebrew-cask/Caskroom/eclipse-ide/4.4.1/eclipse/dropins/
sudo cp -r ~/Downloads/pleiades/eclipse/plugins/* /opt/homebrew-cask/Caskroom/eclipse-ide/4.4.1/eclipse/plugins/
sudo cp -r ~/Downloads/pleiades/eclipse/features/* /opt/homebrew-cask/Caskroom/eclipse-ide/4.4.1/eclipse/features/

#eclipse設定変更
#末尾に以下を追記
#-javaagent:../../../dropins/MergeDoc/eclipse/plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar
sudo echo -javaagent:../../../dropins/MergeDoc/eclipse/plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar >> /Applications/Eclipse.app/Contents/MacOS/eclipse.ini

#EclipseへTomcatプラグインインストール
wget -P ~/Downloads/ http://www.eclipsetotale.com/tomcatPlugin/tomcatPluginV331.zip
cd ~/Downloads/
unzip tomcatPluginV331.zip
sudo cp ~/Downloads/com.sysdeo.eclipse.tomcat_3.3.1.jar /opt/homebrew-cask/Caskroom/eclipse-ide/4.4.1/eclipse/dropins/

#EclipseへVelocityWebEditプラグインインストール
wget  -P ~/Downloads/ "http://downloads.sourceforge.net/project/velocitywebedit/velocitywebedit/1.0.8/VelocityWebEdit-1.0.8.zip"
cd ~/Downloads/
unzip VelocityWebEdit-1.0.8.zip
sudo cp -r ~/Downloads/plugins/* /opt/homebrew-cask/Caskroom/eclipse-ide/4.4.1/eclipse/plugins/

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




