while [ "$1" != "" ]; do
	case $1 in
	--date)
		shift
		date;;
	--logs)
		shift
		if [ -z "$1" ]
		then
			a=100
		else
			a=$1
		fi
		for i in `seq 1 $a`; do
			touch log$i.txt
			echo "log$i.txt">>log$i.txt
			echo "skrypt.sh">>log$i.txt
			echo date>>log$i.txt
		shift
		done;;
	*)
		;;
	esac
done
