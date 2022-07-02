while [ "$1" != "" ]; do
	case $1 in
	--date)
		shift
		date;;
	--logs)
		shift
		for i in `seq 1 100`; do
			touch log$i.txt
			echo "log$i.txt">>log$i.txt
			echo "skrypt.sh">>log$i.txt
			echo date>>log$i.txt
		done;;
	*)
		;;
	esac
done
