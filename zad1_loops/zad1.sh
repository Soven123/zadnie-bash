#wyczysc i przywroc katalog testowy
rm -rf ./test
tar -xf test.tar
cd test

#program
read -p "Jakie pliki wyszukac?: " EXT
FILES=*.$EXT
while :
do
	echo "Znaleziono nastepujace pliki: "  $FILES
	echo  Co z nimi zrobic?   
	echo » 1. Usun
	echo » 2. Zmien prawa
	echo » 3. zmien wlasciciela
	echo » 4. ukryj plik
	echo » 5. wyjscie

	read -p "" CHOICE 

	if [ $CHOICE = 1 ]
	then
		for F in $FILES
		do
			rm "$F"
		done
		
		break
	fi

	if [ $CHOICE = 4 ]
	then
		for F in $FILES
		do
			mv "$F" ".$F"
		done
		
		break
	fi

	if [ $CHOICE = 3 ]
	then
		read -p "Podaj uzytkownika: " USER
		for F in $FILES
		do
			sudo chown $USER "$F"
		done
		
		break
	fi

	if [ $CHOICE = 2 ]
	then
		read -p "Podaj prawa: " PRIVILEGES
		for F in $FILES
		do
			chmod $PRIVILEGES "$F"
		done
		
		break
	fi
	
	if [ $CHOICE = 5 ]
	then
	
		break
	fi
	
done

