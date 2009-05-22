#!/bin/sh

ps -ef | grep "cruisecontro[l]-launcher" | cut -b 10-15 | xargs kill -9