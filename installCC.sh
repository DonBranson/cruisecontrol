#!/bin/sh

CC_VERSION=2.7.2
ZIPFILE="cruisecontrol-bin-${CC_VERSION}.zip"

echo "Get the latest zip"
rm -f cruisecontrol*zip
wget http://downloads.sourceforge.net/cruisecontrol/$ZIPFILE

echo "Remove the existing cruisecontrol directory"
rm -rf cruisecontrol

echo "Unzip the zip file"
unzip -q $ZIPFILE
mv cruisecontrol-bin-${CC_VERSION} cruisecontrol
rm $ZIPFILE

cp -p lib/junit-4.4.jar cruisecontrol/lib
cp -p lib/junit-4.4.jar cruisecontrol/apache-ant-1.7.0/lib/
cp -p cruisecontrol/apache-ant-1.7.0/lib/ant-junit.jar cruisecontrol/lib
