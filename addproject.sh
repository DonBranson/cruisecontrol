#!/bin/sh

export PROJECT=$1
if [ "$PROJECT" == "" ]; then
	echo "Usage: addproject.sh <projectname>"
fi

echo "Adding project $PROJECT"
echo "Please edit config.xml manually to add <project.other name=\"$PROJECT\">"

cd work/checkout
svn co file:///home/common/repositories/svnroot/trunk/$PROJECT
cd -

echo "Stopping cruisecontrol..."
./stop.sh
sleep 1

echo "Starting cruisecontrol..."
./cruise.sh
