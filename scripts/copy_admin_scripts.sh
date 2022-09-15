source vars.sh

cd $ADMIN_SCRIPTS_DIR

homedir="/home/$ADMIN_USER"
for file in *; do
	cp -rv $file "$homedir/"
	chown -R -c -v $user:$user "$homedir/$file"
	chmod -R -v 750 "$homedir/$file"
done

cd -
