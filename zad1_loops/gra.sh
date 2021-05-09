LUCKY_NUMBER=52
IS_WINNER=false
for i in {1..3}
do
	read -p "Podaj liczbe: " NUMBER

	if [ $LUCKY_NUMBER = $NUMBER ]
	then
		echo Wygrales!!!
		IS_WINNER=true
		
		break
	fi
		
	if [ $LUCKY_NUMBER -lt $NUMBER ]
	then
		echo Za duzo
	fi

	if [ $LUCKY_NUMBER -gt $NUMBER ]
	then
		echo Za malo
	fi

done
if [ $IS_WINNER = false ]
then
	echo Koniec prob
fi	