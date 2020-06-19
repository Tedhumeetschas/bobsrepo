#!/bin/bash
#
# ===========================================================
# SCRIPT NAME: boot-log-report.sh


# PURPOSE:

# REVISION HISTORY:

# AUTHOR                   DATE           DETAILS           
#------------------------- -------------- -------------------
# Charles Husted           2020-06-19     Initial version


# LICENSE: 
# ===========================================================

echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"                                                                                                         
echo "                                                      xxxxx                                           "   
echo "        xxxxx                              xxxx       xxxx                   xxxx        xxxx         "   
echo "        xxxx        xxxxxxxxxxxx          xxxx        xxxx                 xxxxxxxxxxxxxxxxxxxxxxxxxxx"   
echo "        xxxx        xxxx    xxxx         xxxx  xxxxxxxxxxxxxxxxxxx        xxxxx xxxxxxxxxxxxxxxxxxxxxx"      
echo "  xxxxxxxxxxxxxxxxx xxxx    xxxx         xxxx  xxxxxxxxxxxxxxxxxxx      xxxxx            xxxx         "       
echo "        xxxx        xxxx    xxxx        xxxx          xxxx              xxx  xxxxxxxxxxxxxxxxxxxxxxxx "   
echo "        xxxx        xxxxxxxxxxxx       xxxxxx         xxxx                   xxxxxxxx  xxx  xxx  xxxx "   
echo "        xxxx        xxxxxxxxxxxx       xxxxxx         xxxx                  xxxxxxxxx  xxx  xxx  xxxx "   
echo "        xxxx        xxxxxxxxxxxx      xxxxxxxxxxxxxxxxxxxxxxxxxxxxx        xxxxx xxxx  xxx  xxx  xxxx "   
echo "   xxxxxxxxxxxxxx   xxxx    xxxx     xxx xxxx              xxxx          xxxxxx  xxxxxxxxxxxxxxxxxxxx "       
echo "   xxxxxxxxxxxxxx   xxxxxxxxxxxx         xxxx              xxxx        xxxxxxxx                       "   
echo "   xxxx      xxxx   xxxx    xxxx         xxxx xxxxxxxxxxxxxxxxxxxxx        xxxx           xx          "   
echo "   xxxx      xxxx   xxxx    xxxx         xxxx      xx      xxxx            xxxx           xxx         "   
echo "   xxxx      xxxx  xxxxx    xxxx         xxxx     xxxx     xxxx            xxxx      xxxxxxxxx    xx  "   
echo "   xxxxxxxxxxxxxxxxxxx      xxxx         xxxx      xxxxx   xxxx            xxxx xxxx xxxx         xxxx"    
echo "   xxxx        xxxxxx       xxxx         xxxx              xxxx            xxxxxxxx  xxxx     xxxx xxx"   
echo "   xxxx       xxxxxx     xxxxxxx         xxxx           xxxxxxx            xxxxxxxx  xxxxxxxxxxxxx  xx"   
echo "              xxxxx      xxxxxx          xxxx           xxxxxxx            xxxx xx   xxxxxxxxxxxxx    "   
echo "                         xxxxxx          xxxx            xxxxxx            xxxx       xxxxxxxxxxx     "   
echo "                                                                                                      " 
echo "          	HERE---------------------------TO--------------------------------SERVE              "
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

now=$(date)
	echo "-------------------------"
	echo "Today is"
	echo "$now"
	echo "-------------------------"


my_boot_log () {
  var=$(journalctl --list-boots)

	echo "-------------------------" 
  	echo "The most recent system boots are:"
	echo
	echo "$var"
	echo "-------------------------"
}

my_boot_log

	echo "###########################"
	echo "###########################"
	echo "--------------------------"
	echo "Consider searching these common boot error words"
	echo "--------------------------"
	echo "bad, error, corrupt, invalid, failure, unsupported, unrecognized, incompatible,"
	echo "mismatched, cannot, inconsistent, not, exceeds, no, too, attempt, authenticated"
	echo "--------------------------" 

PS3='Please enter your choice: '
options=("Most recent boot (0)" "Boot -1" "Boot -2" "Boot -3" "Boot -4" "Boot -5" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Most recent boot (0)")
            echo "Most recent boot (0)"
            journalctl -b 0 | less -NI		
            ;;
        "Boot -1")
            echo "Boot -1"
            journalctl -b -1 | less -NI
            ;;
        "Boot -2")
            echo "Boot -2"
            journalctl -b -2 | less -NI
            ;;
        "Boot -3")
            echo "Boot -3"
            journalctl -b -3 | less -NI
            ;;
        "Boot -4")
            echo "Boot -4"
            journalctl -b -4 | less -NI
            ;;
        "Boot -5")
            echo "Boot -5"
            journalctl -b -5 | less -NI
            ;;

        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done



