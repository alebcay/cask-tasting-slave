#!/bin/bash
URL="$1"
EXPECTED_SHA="$2"

ACTUAL_SHA="$(curl -L --silent "$URL" | /usr/bin/core_perl/shasum -a 256 | cut -d \  -f 1)"
if [ "$EXPECTED_SHA" = "$ACTUAL_SHA" ]
	then
	exit 0
else
	exit 1
fi
