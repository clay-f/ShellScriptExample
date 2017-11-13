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


# No parameter substitution when the "limit string" is quoted or escaped.
# Either of the following at the hread of the here document would have
# + the same effect
# cat <<"eof"
# cat <<\eof

cat <<"SpecialCharTest"

Directory listing would follow if limit string were not quoted.
 `ls -l`

Arithmetic expansion would take place if limit string were not quoted.

$((5 + 3))

A a single backslash would echo if limit string were not quoted.
\\

SpecialCharTest

exit