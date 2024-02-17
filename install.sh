set -eux

export DEBIAN_FRONTEND=noninteractive
export DEBCONF_NONINTERACTIVE_SEEN=true

shdir="scripts"

for bashfile in $(cat $shdir/run_order.txt); do
	echo -e "\nExecuting $bashfile ...\n"
	bash "$shdir/$bashfile"
done
