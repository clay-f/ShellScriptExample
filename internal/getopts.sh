#!/bin/bash

# The getopts construct uses two implicit variables. $OPTIND is the argument pointer (OPTion INDex) and
# $OPTARG (OPTion ARGument) the (optional) argument attached to an option. A colon following the 
# option name in the # declaration tags that option as having an associated argument.


while getopts ":abcde:fg" Option
# Initial declaration.
# a, b, c, d, e, f, and g are the options (flags) expected.
# The : after option 'e' shows it will have an argument passed with it.
do
  case $Option in
    a) 
		echo "a"
		;;
    b ) 
		echo "b"
		;;
	c)
		echo "c"
		;;
	d)
		echo "d"
		;;
    e)
		echo "e"
		;;
    f)
		echo "f"
		;;
    g ) 
		echo "g"
		;;
  esac
done
shift $(($OPTIND - 1))
# Move argument pointer to next.