while :
do
	echo "MENU"  $FILES 
	echo » 1. Zarzadzanie plikami/katalogami
	echo » 2. Zarzadzanie procesami
	echo » 3. Zarzadzanie uzytkownikami
	echo » 4. EXIT
	

	read -p "" CHOICE 

	if [ $CHOICE = 1 ]
	then
		source pliki.sh
		
		break
	fi
	
	if [ $CHOICE = 2 ]
	then
		source procesy.sh
		
		break
	fi
	
	if [ $CHOICE = 3 ]
	then
		source uzytkownicy.sh
		
		break
	fi
	
	if [ $CHOICE = 4 ]
	then
		
		break
	fi
	
done