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



# Eror Reporting
# Regarding error-reporting, there are two modes getopts can run in:
# 1. verbose mode
# 2. slient mode
#
#
# Verbose mode
# invalid option -->	VARNAME is set to ? (question-mark) and OPTARG is unset
# required argument not foun --> 	VARNAME is set to ? (question-mark), OPTARG is unset and an error message is printed
#
# Silent Mode
# invalid option -->	VARNAME is set to ? (question-mark) and OPTARG is set to the (invalid) option character
# required argument not found -->	VARNAME is set to : (colon) and OPTARG contains the option-character in question
#


while getopts ":a:" opt; do
	# When you want getopts to expect an argument for an option, just place a : (colon) 
	# after the proper option flag. If you want -A to expect an argument
	# (i.e. to become -A SOMETHING) just do:
	case $opt in
		a)
			echo "-a was triggered, Parameter: $OPTARG" >&2
			;;
		\?)
			echo "Invalid option: -$OPTARG" >&2
			exit 1
			;;
		:)
			echo "Option -$OPTARG requires an argument." >&2
			exit 1
			;;
	esac
done

# getopts ref http://wiki.bash-hackers.org/howto/getopts_tutorial