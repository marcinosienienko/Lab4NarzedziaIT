while [ "$1" != "" ]; do
	case $1 in
	--date)
		shift
		date;;
	*)
		;;
	esac
done
