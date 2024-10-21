#!/bin/bash

set -eux

source vars.sh

cd $ADMIN_SCRIPTS_DIR

homedir="/home/$ADMIN_USER"
for file in *; do
	cp -rv $file "$homedir/"
	chown -R -c -v $ADMIN_USER:$ADMIN_USER "$homedir/$file"
	chmod -R -v 750 "$homedir/$file"
done

cd -
