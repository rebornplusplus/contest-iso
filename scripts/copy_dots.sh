source vars.sh

cd $DOTS_DIR

for user in $(echo "$ADMIN_USER $TEAM_USER $MOCK_USER"); do
	homedir="/home/$user"
	for file in .[^.]*; do
		cp -rv $file "$homedir/"
		chown -R -c -v $user:$user "$homedir/$file"
		chmod -R -v 750 "$homedir/$file"
	done
done

cd -
