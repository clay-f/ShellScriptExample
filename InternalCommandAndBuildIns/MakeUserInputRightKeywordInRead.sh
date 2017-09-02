#!/bin/bash

prompt_command() {
	printf "\rSiGINT caught"
	sleep 1
	printf "\rType a command >>>> "
}

trap 'prompt_command' SIGINT

while [[ true ]]; do
	printf "\rType a command >>> "
	read -n 1  -s input
	[[ $input =~ [Yy] ]] && break

	bash -c "$input"
done