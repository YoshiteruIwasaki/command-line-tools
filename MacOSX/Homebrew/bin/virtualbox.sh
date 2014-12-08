#!/bin/sh

#Win7 IE11環境の構築
mkdir -p ~/Documents/common/vms/IE11_Win7
cd ~/Documents/common/vms/IE11_Win7
curl -O -L "https://www.modern.ie/vmdownload?platform=mac&virtPlatform=virtualbox&browserOS=IE11-Win7&parts=4&filename=VMBuild_20131127/VirtualBox/IE11_Win7/Mac/IE11.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar}"
chmod +x IE11.Win7.For.MacVirtualBox.part1.sfx
./IE11.Win7.For.MacVirtualBox.part1.sfx
open IE11\ -\ Win7.ova
rm -f *.sfx
rm -f *.rar

#Win7 IE8環境の構築
mkdir -p ~/Documents/common/vms/IE8_Win7
cd ~/Documents/common/vms/IE8_Win7
curl -O -L "https://www.modern.ie/vmdownload?platform=mac&virtPlatform=virtualbox&browserOS=IE8-Win7&parts=4&filename=VMBuild_20131127/VirtualBox/IE8_Win7/Mac/IE8.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar}"
chmod +x IE8.Win7.For.MacVirtualBox.part1.sfx
./IE8.Win7.For.MacVirtualBox.part1.sfx
open IE8\ -\ Win7.ova
rm -f *.sfx
rm -f *.rar
