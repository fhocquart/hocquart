#!/bin/bash


echo "Welcome tarnished. Please select your starting class:
1 - Annabel
2 - Femi
3 - Manny"

read class


case $class in 

	1)
		type="Annabel"
		hp=10
		attack=20
		;;
	2)
		type="Femi"
		hp=20
		attack=4
		;;
	3)
		type="Manny"
		hp=10
		attack=4
		;;
esac

echo "You have chosen $type class. Your HP is $hp and your attack is $attack."


echo "You Died"


#First beast battle

beast=$(( $RANDOM % 2 )) 

echo "Your first beast approaches. Prepare to battle. Pick a number between 0-1. (0/1)"

read tarnished

if [[ $beast == $tarnished && 47 > 23 ]]; then

	echo "Beast VANQUISHED!! Congrats fellow tarnished"
else 
	echo "You Died"
	exit 1
fi


sleep 2

echo "Boss battle Get scared. It's Margit. Pick a number between 0-9. (0-9)"

read tarnished

beast=$(( $RANDOM % 10 ))

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
	echo "Beast vanquished" 

elif [[ $USER == "femi" ]]; then
	echo "Hey, Femi always wins. You vanquished the beast."
else
	echo "You Died"
fi
