# ShellScriptExamplesFedoraLinux

The program 'Convert4NumeralSystems' is
a shell script that translates numbers from 1 to 29 into different numeral systems. 
There are 4 numeral systems that the command should understand, each controlled by a different option: 
-r lower case roman numerals (i, ii, iii, iv, v, vi, vii, viii, ix,...) 
-R upper case roman numerals (I, II, III, IV, ...) 
-a lower case alphabetic (1=>a, 2=>b, etc.) (Turkish alphabet) 
-A upper case alphabetic (1=>A, 2=>B, etc.) (Turkish alphabet)  
- EXAMPLE:
$ ./Convert4NumeralSystems.sh -r 3 
iii  
$ ./Convert4NumeralSystems.sh -R 4 26 
IV  XXVI  
$ ./Convert4NumeralSystems.sh -a 7 8 9 
f g ğ  
$ ./Convert4NumeralSystems.sh -A 1 2 3
A B C 

The program 'FindFilePermissions' is
a shell script that takes the name of a file or directory as an argument and reports
if the file is a directory, regular file or symbolic link and also reports 
if the user has read, write and execute permission on the file or directory
- EXAMPLE:
$ ./FindFilePermissions.sh File1
File1 is a file and has read and write permissions for the user!   
$ ./FindFilePermissions.sh 
Dir1 Dir1 is a directory and has read, write and execute permissions for the user!

The program 'FindMaximumFromEnteredNumbers' is
a shell script that reads integers (one-per-line) from the user until it reads the word “end”. 
Afterward, it will report the maximum number given by the user.
- EXAMPLE:
$ ./FindMaximumFromEnteredNumbers.sh 
Enter a sequence of numbers followed by "end" 
7 18 42 123 54 92 end 
Maximum : 123 

The program 'NumberOfBootTimesLastNumberDays' is
a shell script that takes a single argument which is a number. 
Then it shows the number of times that the computer was booted during last “numbers” of days (including today).
- EXAMPLE:
$ ./NumberOfBootTimesLastNumberDays.sh 3 
20/10/2015 booted 5 times
19/10/2015 booted 2 times 
18/10/2015 booted 0 times 

The program 'RemovesAllZeroLengthOrdinaryFiles' is
a shell script that takes an optional argument as a directory, 
and removes all zero length ordinary files in the directory. 
If directory argument is not given, it removes all zero-length files in the current directory
- EXAMPLE:
$ ls –l /home/std/Desktop
-rw-------  1 std std 152144 Jun 20 2005 alice-in-wonderland.txt 
-rw-------  1 std std 0 Jun 20 2005 barleby-scrivener.txt 
-rw-------  1 std std 13421 Jun 20 2005 calaveras-county.txt 
-rw-------  1 std std 635 Jun 20 2005 french.txt 
-rw-------  1 std std 0 Jun 20 2005 hawthorne.txt 
-rw-------  1 std std 172541 Jun 20 2005 looking-glass.txt 
drwx------  14 std std 476 May 25 2007 shakespeare
-rw-------  1 std std 0 Jun 20 2005 trees-and-other-poems.txt     
 $ ./RemovesAllZeroLengthOrdinaryFiles.sh /home/std/Desktop 
 3 zero-length files are removed from the directory: /home/std/Desktop   
$ ls –l /home/std/Desktop 
-rw-------  1 std std 152144 Jun 20 2005 alice-in-wonderland.txt
-rw-------  1 std std 13421 Jun 20 2005 calaveras-county.txt 
-rw-------  1 std std 635 Jun 20 2005 french.txt 
-rw-------  1 std std 172541 Jun 20 2005 looking-glass.txt 
drwx------  14 std std 476 May 25 2007 shakespeare

