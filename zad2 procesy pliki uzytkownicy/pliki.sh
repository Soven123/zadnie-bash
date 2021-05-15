#wyczysc i przywroc katalog testowy
rm -rf ./test
tar -xf test.tar
cd test


while :
do
	echo "Zarzadzanie plikami/katalogami"    
	echo » 1. Sprawdzanie czy plik istnieje
	echo » 2. Stowrz plik/folder
	echo » 3. Usun plik/folder
	echo » 4. Zmien prawa
	echo » 5. EXIT

	read -p "" CHOICE 

	if [ $CHOICE = 1 ]
	then
		read -p "Wpisz nazwe pliku: " FILE 
		if [ -f $FILE ]
		then
			echo "Plik istnieje"
		else
			echo "Plik nie istnieje"
		fi
		
		break
	fi
	
	if [ $CHOICE = 2 ]
	then
		read -p "Czy chcesz utworzyc plik czy folder?(p/f) " CREATE 
		if [ $CREATE = p ]
		then
			read -p "Wpisz nazwe pliku: " FILE
			touch $FILE
			echo "Stworzono plik"
		fi
		
		if [ $CREATE = f ]
		then
			read -p "Wpisz nazwe folderu: " DIR
			mkdir $DIR
			echo "Stworzono folder"
		fi
		
		break
	fi
	
	if [ $CHOICE = 3 ]
	then
		read -p "Wpisz nazwe pliku/folderu do usuniecia:  " FILE 
		rm -rf $FILE
		echo $FILE "został usuniety"
		
		break
	fi
	
	if [ $CHOICE = 4 ]
	then
		read -p "Wpisz nazwe pliku/folderu: " FILE 
		read -p "Podaj prawa: " PRIVILEGES
		chmod $PRIVILEGES $FILE
		
		break
	fi
	
	if [ $CHOICE = 5 ]
	then
	
		break
	fi
	
done

