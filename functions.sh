new_line() {
	echo ""
}

your_ip() {
	curl http://icanhazip.com      
	
	ip addr | grep inet$IP | \
        cut -d"/" -f 1 | \
        grep -v 127\.0 | \
        grep -v \:\:1 | \
        awk '{$1=$1};1'
}

your_weather() {
	curl -s wttr.in | head -n 6
}

game() {
	beast_choice="$( make_beast_choice $1 )"
	tarnished_choice_prompt $1
	tarnished_choice="$( make_tarnished_choice $1 )"
	result="$( make_result $beast_choice $tarnished_choice )"
	show_result $result
}

make_beast_choice() {
	echo $(( $RANDOM % $1 ))
}

tarnished_choice_prompt() {
	echo "Enter your choice Tarnished (Between 0-$(( $1 - 1)))"
}

make_tarnished_choice() {
	read tarnished_choice
	echo $tarnished_choice
}

make_result() {
	if [[ $1 == $2 || $2 == "coffee" ]]; then
		echo true
	elif [[ $USER == "root" ]]; then
		echo true
	else
		echo false
	fi
}

show_result() {
	if [[ $1 == "true" ]]; then
		echo "You Won!"
	elif [[ $1 == "false" ]]; then
		echo "You Died!"
		exit 1
	fi
}

