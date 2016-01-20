	#!/bin/bash

	#Convert different numeral systems
	LIMITL=1      #Low Limit is 1 because it must not be negatif or zero
	LIMIT=29      #Limit is 29 because we have 29 alphabet letters
	E_ARG_ERR=65

	to_lowalp(){   #Function for Converting number to lower case alphabetics

	num=$1	        #num keeps first argument of input
	case $num in	#there is a switch case for options
	1)echo -n " a ";;
	2)echo -n " b ";;
	3)echo -n " c ";;
	4)echo -n " ç ";;
	5)echo -n " d ";;
	6)echo -n " e ";;
	7)echo -n " f ";;
	8)echo -n " g ";;
	9)echo -n " ğ ";;
	10)echo -n " h ";;
	11)echo -n " ı ";;
	12)echo -n " i ";;
	13)echo -n " j ";;
	14)echo -n " k ";;
	15)echo -n " l ";;
	16)echo -n " m ";;
	17)echo -n " n ";;
	18)echo -n " o ";;
	19)echo -n " ö ";;
	20)echo -n " p ";;
	21)echo -n " r";;
	22)echo -n " s ";;
	23)echo -n " ş ";;
	24)echo -n " t ";;
	25)echo -n " u ";;
	26)echo -n " ü ";;
	27)echo -n " v ";;
	28)echo -n " y ";;
	29)echo -n " z ";;
	*) echo " OUT OF RANGE !! PLEASE ENTER BETWEEN 1 - 29 ";;
	esac 

	}
	to_upalp(){
	num=$1
	case $num in
	1)echo -n " A ";;
	2)echo -n " B ";;
	3)echo -n " C ";;
	4)echo -n " Ç ";;
	5)echo -n " D ";;
	6)echo -n " E ";;
	7)echo -n " F ";;
	8)echo -n " G ";;
	9)echo -n " Ğ ";;
	10)echo -n " H ";;
	11)echo -n " I ";;
	12)echo -n " İ ";;
	13)echo -n " J ";;
	14)echo -n " K ";;
	15)echo -n " L ";;
	16)echo -n " M ";;
	17)echo -n " N ";;
	18)echo -n " O ";;
	19)echo -n " Ö ";;
	20)echo -n " P ";;
	21)echo -n " R ";;
	22)echo -n " S ";;
	23)echo -n " Ş ";;
	24)echo -n " T ";;
	25)echo -n " U ";;
	26)echo -n " Ü ";;
	27)echo -n " V ";;
	28)echo -n " Y ";;
	29)echo -n " Z ";;
	*) echo " OUT OF RANGE !! PLEASE ENTER BETWEEN 1 - 29  ";;   #Controlling input is less than 1 or bigger than 29
	esac
	 }

	to_lowroman(){  	#Function for Converting number to lower case roman numerals
	number=$1
	factor=$2
	rchar=$3
	let "remainder = number - factor"
	while [ "$remainder" -ge 0 ]
	do
	  echo -n $rchar
	  #echo $remainder
	  let "number -= factor"
	  let "remainder = number - factor"
	done  
	echo -n 
	return $number  
	#echo     
	 
	}

	to_uproman(){		#Function for Converting number to upper case alphabetics
	number=$1
	factor=$2
	rchar=$3
	let "remainder = number - factor"
	while [ "$remainder" -ge 0 ]
	do
	  echo -n $rchar
	  #echo $remainder
	  let "number -= factor"
	  let "remainder = number - factor"
	done  
	echo -n  	#display alongside
	return $number  


	}


	string1=$1  #string1 keeps first argument so format option , -r,-R,-a,-A

	if [ -z "$2" ]    #If user does not enter number to convert , warning message will be shown (usage information)
	then
	  #echo "Usage: `basename $0` $1 number-to-convert"
		echo "Usage : "
		echo "$0 -r [number...]"
		echo "$0 -R [number...]"
		echo "$0 -a [number...]"
		echo "$0 -A [number...]"
	  exit $E_ARG_ERR   #program ends

	echo  

	elif [ "$string1" == "-A" ]  #Control input is which option , this is for upper case alphabetic
	then
	#echo "upper case"
	for i in ${*:2:9}; do        #For loop is for controlling not bigger than 9 arguments which user enters
	to_upalp $i		     #Calling converting uppercase alphabetic function to_upalp
	done 


	elif [ "$string1" == "-a" ] 
	then 
	#echo "lower case"
	i=2
	for i in ${*:2:9}; do   #For loop is for controlling not more than 9 arguments which user enters
	to_lowalp $i		#Calling converting lowercase alphabetic function to_lowalp
	done

	for i in ${*:11}; do   #Warning message is for more than 9 entering input arguments
	echo 		       #It begins giving warning message after 10 input arguments
	echo "IT SHOULD BE 9 ARGUMENTS !!!"
	done



	elif [ "$string1" == "-r" ] 	#Function for Converting number to lower case roman numerals
	then 
	#echo "lower case roman"

	for k in ${*:2:9}; do 		#For loop is for controlling not more than 9 arguments which user enters
	num=$k
	if [ $num -gt $LIMIT ]
	then
	  echo " $num is too large !! "  #If input is bigger than 29 , warnning message is ' INPUT is too large'
	 # exit $E_ARG_ERR
	elif [ $num -lt $LIMITL ]
	then 
	echo " $num is too small !! "   #If input is less than 1 , warnning message is ' INPUT is too small'
	#exit $E_ARG_EER
	else  
	echo -n " "
	to_lowroman $num 10 x  		#Calling converting lowercase roman numerals function to_lowroman
	num=$?
	to_lowroman $num 9 ix
	num=$?
	to_lowroman $num 5  v
	num=$?
	to_lowroman $num 4 iv 
	num=$?
	to_lowroman $num 1 i
	num=$? 

	fi
	done
	for i in ${*:11}; do 		#Warning message is for more than 9 entering input arguments
	echo 				#It begins giving warning message after 10 input arguments
	echo "IT SHOULD BE 9 ARGUMENTS !!!"
	done

	elif [ "$string1" == "-R" ] 	#Function for Converting number to upper case roman numerals
	then 
	#echo "upper case roman"
	
	for k in ${*:2:9}; do 		#For loop is for controlling not more than 9 arguments which user enters
	num=$k
	if [ $num -gt $LIMIT ]
	then
	  echo " $num is too large !! "	#If input is bigger than 29 , warnning message is ' INPUT is too large'
	  #exit $E_ARG_ERR

	elif [ $num -lt $LIMITL ]
	then 
	echo " $num is too small !! "   #If input is less than 1 , warnning message is ' INPUT is too small'
	#exit $E_ARG_EER

	else  
	echo -n " "			#space every display number 	
	to_uproman $num 10 X  		#Calling converting uppercase roman numerals function to_uproman
	num=$?
	to_uproman $num 9 IX 
	num=$?
	to_uproman $num 5 V
	num=$?
	to_uproman $num 4 IV 
	num=$?
	to_uproman $num 1 I
	fi

	done
	for i in ${*:11}; do 		#Warning message is for more than 9 entering input arguments
	echo 				#It begins giving warning message after 10 input arguments
	echo "IT SHOULD BE 9 ARGUMENTS !!!"
	done

	

	else
	echo "$0 -r [number...]"   #If user does not enter format option , warning message will be shown (usage information)
	echo "$0 -R [number...]"
	echo "$0 -a [number...]"
	echo "$0 -A [number...]"
	fi



	echo

	exit 0












