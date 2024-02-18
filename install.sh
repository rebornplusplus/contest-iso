#!/bin/bash

set -eux

export DEBIAN_FRONTEND=noninteractive
export DEBCONF_NONINTERACTIVE_SEEN=true

shdir="scripts"

run_order="$shdir/run_order.txt"
if [[ ! -f "$run_order" ]]; then
	echo "error: run_order.txt not found" >&2
	exit 1
fi

scripts=( $(cat "$run_order" | grep "\S" | grep -v "^#" ) )
for script in "${scripts[@]}"; do
	echo -e "\nExecuting $script ...\n"
	bash "$shdir/$script"
done
