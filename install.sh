#!/usr/bin/env bash
#

TEMP_INSTALL=$(mktemp)
curl -o $TEMP_INSTALL https://raw.githubusercontent.com/michal-fre/no-connect/master/install.sh