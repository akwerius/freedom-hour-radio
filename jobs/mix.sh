#!/bin/sh

# This script, as used at http://language101.com, shows using several
# effects in combination to normalise and trim voice recordings that
# may have been recorded using different microphones, with differing
# background noise etc.

SOX=/Users/akwerius/Sites/rortest/sox-14.3.2/sox

if [ $# -lt 2 ]; then
  echo "Usage: $0 firstfile secondfile"
  exit 1
fi

$SOX -m "$1" "$2" ./mixes/outmix.wav


