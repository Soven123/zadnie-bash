tar -xf test.tar
cd test
read -p "Jakie pliki wyszukac?:" EXT
FILES=*.$EXT

echo "Znaleziono nastepujace pliki:"  $FILES
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
fi

if [ $CHOICE = 4 ]
then
	for F in $FILES
	do
		mv "$F" ".$F"
	done
fi

if [ $CHOICE = 3 ]
then
	for F in $FILES
	do
		chown "jurek" "$F"
	done
fi
