#! bin/bash


#-------------------------------------------------
# ECHO COMMAND
#-------------------------------------------------
#echo "Hello World!"


#-------------------------------------------------
# VARIABLES
#-------------------------------------------------


# Upper case by convention
# Letters, numbers, underscores
#NAME="Ted"
#echo "My name is $NAME"
#echo "My name is ${NAME}"


#-------------------------------------------------
# USER INPUT
#-------------------------------------------------

#read -p "Enter your name: " NAME
#echo "Hello $NAME, nice to meet you!"

# SIMPLE IF STATEMENT
#if [ "$NAME" == "Ted" ]
#then
#  echo "Your name is Ted"
#fi


#-------------------------------------------------
# IF-ELSE
#-------------------------------------------------

#if [ "$NAME" == "Ted" ]
#then
#  echo "Your name is Ted"
#else
#  echo "Your name is not Ted"
#fi


#-------------------------------------------------
# ELSE-IF (elif)
#-------------------------------------------------

#if [ "$NAME" == "Ted" ]
#then
#  echo "Your name is Ted"
#elif [ "$NAME" == "Jack" ]  
#then
#  echo "Your name is not Ted or Jack"
#else
#  echo "Your name is not Ted"
#fi


#-------------------------------------------------
# COMPARISON
#-------------------------------------------------

#NUM1=3
#NUM2=5
#if [ "$NUM1" -gt "NUM2" ]
#then
#  echo "$NUM1 is greater than $NUM2"
#else
#  echo "$NUM1 is less than $NUM2"
#fi
##########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
##########


#-------------------------------------------------
# FILE CONDITIONS
#-------------------------------------------------

#FILE="test.txt"
#if [ -f "$FILE" ]
#then
#  echo "$FILE is a file"
#else
#  echo "$FILE is not a file"
#fi  

##########
# -d file	True if the file is a directory
# -e file	True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file	True if the the provided string is a file
# -g file	True if the group ID is set on a file
# -r file	True if the file is readable
# -s file	True if the file has a non-zero size
# -u file	True if the user id is set on file
# -w file	True if the file is writable
# -x file	True if the file is executable
##########


#-------------------------------------------------
# CASE STATEMENTS
#-------------------------------------------------

#read -p "Are you 21 or over? Y/N" ANSWER
#case "$ANSWER" in
#  [yY] | [yY][eE][sS])
#    echo "You can have a beer :)"
#    ;;
#  [nN] | [nN][oO])
#    echo "Sorry, no drinking"
#    ;;
# *)   
#    echo "Please enter y/yes or n/no"
#    ;;
#esac


#-------------------------------------------------
# SIMPLE FOR LOOP
#-------------------------------------------------
#NAMES="Brad Kevin Alice Mark"
#for NAME in $NAMES
#do
#  echo "Hello $NAMES"
#done  


#-------------------------------------------------
# FOR LOOP TO RENAME FILES
#-------------------------------------------------
#FILES=$(ls *.txt)
#NEW="new"
#for FILE in $FILES
#  do
#    echo "Renaming $FILE to new-$FILES"
#    mv $FILE $NEW-$FILE
#done   


#-------------------------------------------------
# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
#-------------------------------------------------

#LINE=1
#while read -r CURRENT_LINE
#    do
#        echo "$LINE: CURRENT_LINE"
#        ((LINE++))
#done < "./new-1.txt"        

#-------------------------------------------------
# FUNCTIONS
#-------------------------------------------------
#function sayhello() {
#    echo "Hello World"
#}
#
#sayHello


#-------------------------------------------------
# FUNCTIONS WITH PARAMS
#-------------------------------------------------
#function greet() {
#    echo "Hello, I am $1 and $2"
#}
#
#greet "Ted" "48"







    
    
    




