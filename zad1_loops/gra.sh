LUCKY_NUMBER=52
read -p "Podaj liczbe: " NUMBER

if [ $LUCKY_NUMBER = $NUMBER ]
then
	echo Wygrales!!!
fi
	
if [ $LUCKY_NUMBER -lt $NUMBER ]
then
	echo Za duzo
fi

if [ $LUCKY_NUMBER -gt $NUMBER ]
then
	echo Za malo
fi


	