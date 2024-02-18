#!/bin/bash

set -eux

source vars.sh

cd $DOTS_DIR

for file in .[^.]*; do
	cp -rv $file "/etc/skel"
done

cd -
