source vars.sh

for bashfile in $(cat $SCRIPTS_DIR/run_order.txt); do
	echo -e "\nExecuting $bashfile ...\n"
	bash "$SCRIPTS_DIR/$bashfile"
done
