#!/bin/bash

cat <<"SpecialCharTest"

Directory listing would follow
if limit string were not quoted.
`ls -l`

Arithmetic expansion would take place
if limit string were not quoted.
$((5 + 3))

A a single backslash would echo
if limit string were not quoted.
\\
SpecialCharTest
exit

