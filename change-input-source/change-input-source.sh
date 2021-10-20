#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Change Input Source
# @raycast.mode silent
# @raycast.packageName System
#
# Optional parameters:
# @raycast.icon ⌨
# @raycast.needsConfirmation false
# @raycast.argument1 { "type": "text", "placeholder": "en|tr", "percentEncoded": true, "optional": false }
#
# Documentation:
# @raycast.description Changes keyboard input source
# @raycast.author Isa Goksu
# @raycast.authorURL https://github.com/isa

lang=$1
echo "Changing keyboard layout to -> $lang"
if [[ $lang = "en" ]]
then
    InputSourceSelector select "com.apple.keylayout.British" &>/dev/null &
else
    InputSourceSelector select "com.apple.keylayout.Turkish-QWERTY-PC" &>/dev/null &
fi
