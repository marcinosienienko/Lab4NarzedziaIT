help()
{
echo "Lista dostępnych opcji: "
echo "--date #wyświetli dzisiejszą datę"
echo "--logs utworzy automatycznie 100 plików logx.txt x-nrpliku od 1 do100 plik zawiera nazwę, nazwę skryptu, datę"
echo "--logs a utworzy automatycznie a plików logx.txt x-nr pliku od 1 do 100 plik zawiera nazwę, nazwę skryptu, datę"
echo "--help wyświetli listę dostępnych opcji"
}

while [ "$1" != "" ]; do
	case $1 in
	--date|-d)
		shift
		date;;
	--logs|-l)
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
	--help|-h)
		shift
		help;;
	*)
		;;
	esac
done
