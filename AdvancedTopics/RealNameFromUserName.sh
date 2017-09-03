#!/bin/bash

ARGCOUNT=1
E_WRONGARGS=85

file=/etc/passwd
pattern=$1

if [[ $# -ne $ARGCOUNT ]]; then
	echo "Usage: `basename $0` USERNAME"
	exit $E_WRONGARGS
fi

file_excerpt() {
	while IFS=":" read line
	do
		echo "$line" | grep $1 | awk -F: '{print $5}'
	done
} <$file


file_excerpt $pattern

exit 0