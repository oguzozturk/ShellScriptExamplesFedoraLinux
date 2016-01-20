#!/bin/bash


# If user does not enter any parameter
if [ -z "$1" ]; then
echo $1	
# Assign pwd(print working directory) to DIRECTORY
	DIRECTORY=$(pwd)

# Finds number of empty files
# -maxdepth provides for not reaching to sub-directories
countEmptyFiles=$(find "$DIRECTORY" -maxdepth 1 -type f -size 0 | wc -l)
# Find empty file and delete them
$(find "$DIRECTORY" -maxdepth 1 -type f -size 0 -delete) 
echo "$countEmptyFiles zero-length files are removed from the directory: $DIRECTORY"

else

# Assign first arguman to DIRECTORY
DIRECTORY=$1

# Check directory is valid or not
if [ ! -d "$DIRECTORY" ]; then
	echo "The path is invalid"

else
 
# Same operations for the first condition
countEmptyFiles=$(find "$DIRECTORY" -maxdepth 1 -type f -size 0 | wc -l)
$(find "$DIRECTORY" -maxdepth 1 -type f -size 0 -delete) 
echo "$countEmptyFiles zero-length files are removed from the directory: $DIRECTORY"

fi
fi
