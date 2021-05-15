echo "Zarzadzanie procesami"
ps -A

read -p "Czy chcesz zamknac jakis proces(t/n): " CLOSE
		if [ $CLOSE = t ]
		then
			read -p "Jaki proces zamknac? " PID
			kill -9 $PID
			echo "Proces został zmkniety"
			
		fi
		
		if [ $CLOSE = n ]
		then
			break
		fi