#!/bin/sh

# Create the work directory outside the install dir, as suggested by the cruisecontrol web page.

rm -rf work
mkdir -p work/checkout
mkdir -p work/logs
mkdir -p work/artifacts

cd work/checkout
echo "Check out all projects configured in config.xml"
grep "<project.donsproxy" ../../config.xml | sed -e 's+^[^"]*"\(.*\)".*$+svn co file:///home/common/repositories/donsproxy/\1/trunk \1+' | sh
#grep "<project.other" ../../config.xml | sed -e 's+^[^"]*"\(.*\)".*$+svn co file:///home/common/repositories/svnroot/trunk/\1+' | sh
cd -
