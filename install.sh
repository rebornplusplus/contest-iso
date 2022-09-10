for bashfile in $(find scripts/*.sh | sort); do
	echo -e "\nExecuting $bashfile ...\n"
	bash $bashfile
done
