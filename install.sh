shdir="scripts"

for bashfile in $(cat $shdir/run_order.txt | sort); do
	echo -e "\nExecuting $bashfile ...\n"
	bash "$shdir/$bashfile"
done
