while :
do
	echo "Zarzadzanie uzytkownikami:"    
	echo » 1. Tworzenie uzytkownikow
	echo » 2. Usuwanie uzytkownikow
	echo » 3. Tworzenie grup
	echo » 4. Dodawanie uzytkownika do grupy
	echo » 5. EXIT

	read -p "" CHOICE 

	if [ $CHOICE = 1 ]
	then
		read -p "Wpisz nazwe Uzytkownika ktorego chcesz utworzyc: " ADD 
		sudo adduser $ADD
		
		break
	fi
	
	if [ $CHOICE = 2 ]
	then
		read -p "Wpisz nazwe Uzytkownika ktorego chcesz usunac: " DEL
		sudo deluser $DEL
		
		break
	fi
	
	if [ $CHOICE = 3 ]
	then
		read -p "Wpisz nazwe grupy do utworzenia: " GROUP
		groupadd $GROUP
		
		break
	fi
	
	if [ $CHOICE = 4 ]
	then
		read -p "Wpisz nazwe uzytkownika: " USER
		read -p "Wpisz nazwe grupy do ktorej chcesz przypisac uzytkownika: " GROUP
		usermod -aG $GROUP $USER
		
		break
	fi
	
	if [ $CHOICE = 5 ]
	then
	
		break
	fi
	
done