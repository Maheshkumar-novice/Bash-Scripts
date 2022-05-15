#!/bin/bash

echo "Importing Functions...."
sleep 1
source functions.sh

clear

echo "Your IP details:"
your_ip
new_line

echo "Your Weather:"
your_weather
new_line

echo "WELCOME TO THE MOST DANGEROUS GAME IN THE WORLD, Tarnished!"
echo "Select Your Class:
	1. Samurai
	2. Prisoner
	3. Prophet"
read class

case $class in	
	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisoner"
		hp=20
		attack=4
		;;
	3)
		type="Prophet"
		hp=30
		attack=4
		;;
esac

echo "Your Data:
	Type: $type
	HP: $hp
	Attack: $attack"

new_line
game 2
new_line
game 10 
