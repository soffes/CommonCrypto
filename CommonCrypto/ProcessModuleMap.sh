#!/bin/sh

#  ProcessModuleMaps.sh
#  CommonCrypto
#
#  Created by Brian Hardy on 1/26/17.
#  Copyright © 2017 Sam Soffes. All rights reserved.

# Replace DEVELOPER_DIR with the value of that environment variable in the given module map file
echo "Replacing DEVELOPER_DIR in $1"
echo "Before:\n---"
cat $1
echo "---"
perl -pi -e "s{DEVELOPER_DIR}{$DEVELOPER_DIR}g" $1
echo "\nAfter:\n---"
cat $1
echo "---"
