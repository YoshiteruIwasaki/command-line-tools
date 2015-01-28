#!/bin/sh

echo install cayenne2
wget -P ~/Downloads/ http://archive.apache.org/dist/cayenne/cayenne-2.0.4-macosx.dmg
hdiutil mount ~/Downloads/cayenne-2.0.4-macosx.dmg
sudo cp -r /Volumes/cayenne-2.0.4/ /Applications/cayenne-2.0.4/
hdiutil unmount /Volumes/cayenne-2.0.4/


echo install cayenne3
wget -P ~/Downloads/ http://archive.apache.org/dist/cayenne/cayenne-3.0.1-macosx.dmg
hdiutil mount ~/Downloads/cayenne-3.0.1-macosx.dmg
sudo cp -r /Volumes/cayenne-3.0.1/ /Applications/cayenne-3.0.1/
hdiutil unmount /Volumes/cayenne-3.0.1/
