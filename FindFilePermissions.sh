
#!/bin/bash
E_ARG_ERR=65


if [ -z "$1" ]            #Control if user enter argument or not 
then 
echo "Missing argument! " #Warning message for not entering argument
  exit $E_ARG_ERR	  #And program will be end 
fi  

for str in $@; do        #loop  for checking every input what is type

    result=

    if [ -d $str ]      #directory control
    then
        result="$str is a directory and it is "
        echo -n " " 
    elif [ -f $str ]	#regular file control
    then
        result="$str is a regular file and it is "
       echo -n " "
			# -h or -L for symbolic link
    elif [ -h $str ]	#symbolic link control
    then          
	result="$str is symbolic link and it is "
       echo -n " "
    else
        echo "Warning! It is invalid input."  #If input is not one of those , warning message will be shown
	exit $E_ARG_ERR	
    fi

    echo -n "$result"

    if [ -r $str ]  #Second part of output , checking user permissions 
    then	    #If it is readable ...	
        echo -n "read "
	echo -n " "

    fi
    if [ -w $str ] #If it is writable ...
    then
	echo -n "write "
	echo -n " "

    fi
    if [ -x $str ] #If it is execatable...
    then
	echo -n "execute "
	echo -n " "

    fi
    
echo -n "permissions for the user!"  
echo
done	#END OF PROGRAM

