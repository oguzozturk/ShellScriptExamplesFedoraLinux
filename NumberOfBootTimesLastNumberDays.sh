
#!/bin/bash
LIMIT=1
num_days=$1
E_ARG_ERR=65

# Checking negative numbers  
if [ $num_days -lt $LIMIT ];
then
echo "Parameter should be positive..."
exit $E_ARG_ERR
fi

if [[ $num_days = *[[:digit:]]* ]]; then

# Assign date to Today by format date in order to use last reboot command 
Today=$(date +"%a %b %d")
a=0

# Loop turns according to parameter
while [ $num_days -ge 1 ]
do

# Assing date to Dates by format date(Day/Month/Year)
# When loop turn every time, Dates and Today go back one day 
Dates=$(date +"%d/%m/%y" -d "-$a days")
Today=$(date +"%a %b %d" -d "-$a days")

# Last command gives some information about log in,reboot and show down  
# Grep searches reboot word and Today date in last command
# wc -l command finds number of reboots
N_Reboot=`last | grep reboot | grep "$Today" | wc -l `
echo "$Dates booted $N_Reboot times"

num_days=`expr $num_days - 1 `
a=`expr $a + 1 `

done

else
echo "Parameter is not valid..."
fi
