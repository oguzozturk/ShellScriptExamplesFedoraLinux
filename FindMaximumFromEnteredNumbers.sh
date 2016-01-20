
#!bin/bash
 
 number=0	#initial number value is zero
 echo "Enter a sequence of numbers followed by 'end'" #beginning title of program for user
 read number  #take input from user
 max=0	     #initial value of max is zero 

	while [ $number != "end" ]    #Loop for taking input until 'end' word 
	do			      #Comparing input number is end or not to continous loop
	if [[ "$number" -gt "$max" ]]; then  #Comparing input and max value, 
		max=$number	             #if input is bigger than max , new max is curren input		
	fi
		read number       #Take input every time loop turns
	done

	echo "Maximum : $max"    #Display result 

if [ "$max" -eq "0" ];   #If user enters only string or does not enter any input before end word 
			 #Warning message will be shown 
then
echo "missing argument or only string entering !"
fi
