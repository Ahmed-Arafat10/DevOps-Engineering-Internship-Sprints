-Sed Utility:

#1 $ sed -n '/IP/p' /etc/passwd

#2 $ sed -n '3!p' /etc/passwd

#3 $ sed -n '$!p' /etc/passwd

#4 $ ed  -n '/IP/!p' /etc/passwd

#5 $ sed  's/IP/myIP/g' /etc/passwd

- Awk Utility:

#1 $ awk -F: '{print $5}' /etc/passwd

#2 $ awk -F: '{print NR " : " $1,$5,$6}' /etc/passwd

#3 $ awk -F: '{if($3 > 500) print $1,$3,$5}' /etc/passwd

#4 $ awk -F: '{if($3 == 500) print $1,$3,$5}' /etc/passwd

#5 $ awk -F: '{if(NR >= 5 && NR <= 15) print NR " : "$0}' /etc/passwd

#6 $ awk -F: 'BEGIN {SUM = 0;}{ SUM = SUM + $3; } END{print "Sum Of All IDs is :" SUM}' /etc/passwd

-Shell Script


#1
-----------------
#! /bin/bash
read c 
case $c in
@([a-z]) )
 echo "Lower case"
;;
@([A-Z]) )
 echo "Upper case"
;;
@([0-9]) )
 echo "Integer"
;;
esac
---------------

#2 
---------------
- I Will create three Variables (Upper/lower/number) and intialize them with ZERO
	and then i will iterate over charecters of string and if the charecter is 
	Upper case the assign 1 to  Variable Upper
	lower case the assign 1 to  Variable lower
	number the assign 1 to  Variable number
	& then check if :
	upper is 1 while other Variables are zero -> this is an Uppercase String
	lower is 1 while other Variables are zero -> this is an lowercase String
	number is 1 while other Variables are zero -> this is an string consist of only number
	three Variables are 1 -> this is an Mix String
	else print "Something Else"
-----------------

#3 $
-----------------
#! /bin/bash

File=$(find /home/arafat/Desktop -type f 2> /home/arafat/Desktop/filex)

for CurrentFile in $File
do
        chmod a+x $CurrentFile
        echo "$CurrentFile has been modified"
done
-----------------

#4
------------------
#! /bin/bash

mkdir BackUp
File=$(find /home/arafat/Desktop -type f 2> /home/arafat/Desktop/filex)

for CurrentFile in $File
do
        cp  $CurrentFile ./BackUp
        echo "$CurrentFile has been coped to BackUp Directory"
done
------------------

#5
------------------
#! /bin/bash

touch /home/arafat/Desktop/mtemplate
echo "Hello Mail this is The Mail Body For Example" >  /home/arafat/Desktop/mtemplate
for Users in 'cut -d: -f1 /etc/passwd'
do
	mailx $Users < /home/arafat/Desktop/mtemplate
	echo "A Mail Has Been Sent to $Users"
done
------------------

#6
------------------
inside : CheckMail.sh
#! /bin/bash
while true;
do
sleep 10
ls /var/mail/username
done

Then Run Command : $ source CheckMail.sh
------------------

#7
------------------
#! /bin/bas
select Answer in ls ls-a exit
do
case $Answer in
ls ) ls;
echo $Answer
;;
ls-a ) ls -l
echo $Answer
;;
exit ) break
;;
* ) echo "Make Sure That You Have Entered One Of Above Choices "
;;
esac
done
------------------

#8
------------------
#! /bin/bash
echo "How Many ELements You Want To Enter In An Array"
typeset -i num
read num
for(( i=0;i<num;i++ ))
do
	echo "Please Enter Element No. $1"
	read Element
	arr[$i]=$Element
done
for(( i=0;i<num;i++ ))
do
	echo "The Element No. $1 is -> ${arr[i]}"
done
------------------

#9
------------------
#! /bin/bash
echo "How Many ELements You Want To Enter In An Array"
typeset -i num
typeset -i AV
typeset -i Sum=0
read num
for(( i=0;i<num;i++ ))
do
	echo "Please Enter Element No. $1"
	read Element
	arr[$i]=$Element
	Sum=Sum+${arr[$i]}
	echo $Sum
done
	AV=$Sum/$num
	echo "Average is -> $AV"
------------------
