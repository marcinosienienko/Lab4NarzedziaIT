help()
{
echo "Lista dostępnych opcji: "
echo "--date lub -d #wyświetli dzisiejszą datę"
echo "--logs lub -l utworzy automatycznie 100 plików logx.txt x-nrpliku od 1 do100 plik zawiera nazwę, nazwę skryptu, datę"
echo "--logs a lub l a utworzy automatycznie a plików logx.txt x-nr pliku od 1 do 100 plik zawiera nazwę, nazwę skryptu, datę"
echo "--help lub -h wyświetli listę dostępnych opcji"
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
			touch log$i/log$i.txt
			echo "log$i/log$i.txt">>log$i.txt
			echo "skrypt.sh">>log$i.txt
			echo date>>log$i.txt
		shift
		done;;
 	--error|-e)
                shift
                if [ -z "$1" ]
                then
                        a=100
                else
                        a=$1
                fi
                for i in `seq 1 $a`; do
                        touch error$i/error$i.txt
                        echo "error$i/error$i.txt">>error$i.txt
                        echo "skrypt.sh">>error$i.txt
                        echo date>>error$i.txt
                shift
                done;;
	--help|-h)
		shift
		help;;
	--init)
		shift
		git clone https://github.com/pepe32321/NarzIT_Lab4_PJA
		PATH="$(pwd)/NarzIT_Lab4_PJA"
	;;
*)
		;;
	esac
done
