#!/bin/bash

OUTFILE=generated.sh

(
cat <<'eof'
#!/bin/bash
echo "This is a generated shell script."
echo "Generated file will be named: $OUTFILE"
a=7
b=3
let "c = $a * $b"
exit 0
eof
) > $OUTFILE

if [[ -f "$OUTFILE" ]]; then
	echo "true"
else
	echo "false"
fi

exit 0

# It is possible to set a variable from the output of a here document.

variable=$(cat <<SETVAR This variable runs over multiple lines. SETVAR)

echo "$variable"