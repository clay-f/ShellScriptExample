#!/bin/bash

E_NOSUCHFILE=85

read -p "File: " file
if [[ ! -e "$file" ]]; then
	echo "File $file not found."
	exit $E_NOSUCHFILE
fi

read -p "Title: " title
cat - $file <<<$title > $file.new

exit

	from 'man bash':

	Here Strings
		A variant of here documents, the format is:

			<<<word

		The word is expanded and supplied to the command on its standard input.

	Of course, the following also works:
	sed -e '1i\ Title: ' $file