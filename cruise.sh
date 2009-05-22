#!/bin/sh

cp ./config.xml work
cp ./cruisecontrol/dashboard-config.xml work
cd work
nohup ../cruisecontrol/cruisecontrol.sh
