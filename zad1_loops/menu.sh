while :
do
	echo "Program w koncu działa licze ze zdam do nastepnej klasy ;): "  $FILES 
	echo » 1. FOR na plikach
	echo » 2. FOR programistyczny
	echo » 3. Wyjscie
	

	read -p "" CHOICE 

	if [ $CHOICE = 1 ]
	then
		source pliki.sh
		
		break
	fi
	
	if [ $CHOICE = 2 ]
	then
		source gra.sh
		
		break
	fi
	
	if [ $CHOICE = 3 ]
	then
	
		break
	fi
	
done