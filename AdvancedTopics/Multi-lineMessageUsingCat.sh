#!/bin/bash

CMDLINEPARAM=1

if [[ $# -ge $CMDLINEPARAM ]]; then
	NAME=$1
else
	NAME="false"
fi

RESPONDENT="the anthor of this fine script."

cat <<eof

Hello, there, $NAME.
Greetings to you, $NAME, from $RESPONDENt.
# This comment shows up in the output (why?)

eof

exit