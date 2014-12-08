#!/bin/sh

echo install cayenne
wget -P ~/Downloads/ http://archive.apache.org/dist/cayenne/cayenne-2.0.4-macosx.dmg
hdiutil mount ~/Downloads/cayenne-2.0.4-macosx.dmg
sudo cp -r /Volumes/cayenne-2.0.4/ /Applications/cayenne-2.0.4/
hdiutil unmount /Volumes/cayenne-2.0.4/
