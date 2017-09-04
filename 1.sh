#!/bin/bash
xxd -b input.txt | cut -d" " -f 2-7 >2.bin 
v=`cat 2.bin`
a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0
i=0
j=0
h=0
z=0
for x in $v
do
#echo "Binary Value :'$x' "
#echo "hamming weight  of $a bit is "
z=$(echo "$x"  |  tr -cd '1' | wc -c)  
#echo "$z"
if [ $z = 0 ]
then
b=$((b+1))
echo "$x"  >> 0.txt
else if [ $z = 1 ]
then
c=$((c+1))
echo "$x"  >> 1.txt
elif [ $z = 2 ]
then
d=$((d+1))
echo "$x"  >> 2.txt
elif [ $z = 3 ]
then
e=$((e+1))
echo "$x"  >> 3.txt
elif [ $z = 4 ]
then
f=$((f+1))
echo "$x"  >> 4.txt
elif [ $z = 5 ]
then
g=$((g+1))
echo "$x"  >> 5.txt
elif [ $z = 6 ]
then
h=$((h+1))
echo "$x"  >> 6.txt
elif [ $z = 7 ]
then
i=$((i+1))
echo "$x"  >> 7.txt
elif [ $z = 8 ]
then
j=$((j+1))
echo "$x"  >> 8.txt
fi
fi
a=$((a+1))
done
echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 0 :$b" 
echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 1 $c"
echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 2 $d" 
echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 3 $e"  
echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 4 :$f"
echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 5 :$g"
echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 6 :$h"
echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 7 :$i"
echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 8 :$j"
#echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 0 :$b"  
#echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 1 :$c"  
#echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 2 :$d"  
#echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 3 :$e" >> 3.txt
#echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 4 :$f"  
#echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 5 :$g"  
#echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 6 :$h"  
#echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 7 :$i"  
#echo "The total no of 0 bit in 8 bit vector which contaions hamming weight 8 :$j"  

#echo "no of 0's is "
#echo "$value" | tr -cd '0' | wc -c
#echo "no of 1's is "
#echo "$value" | tr -cd '1' | wc -c


#for i in ${value}; do



   #echo $i

#done
