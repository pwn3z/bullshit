#!/bin/bash

diratual=$(pwd)
find $1 -type d |grep "/" > /tmp/temporario

for i in `cat /tmp/temporario`
do


cd $diratual
cd $i

    z=$(a=$(ls -F);for x in `echo $a`;do echo $x |sed 's/ /\n/g' |grep -v "/" |tr -d "*" ;done)
    c=1
        for file in $z ; do
    mv -v "$file" XXXXXX"$c".jpg
        c=$(( c + 1 ))
    done

done
cd $diratual
sla=$(cat /tmp/temporario |head -n1|cut -d "/" -f1)
cd $sla
bypass=$(a=$(ls -F);for x in `echo $a`;do echo $x |sed 's/ /\n/g' |grep -v "/" |tr -d "*";done)
c=1
for file in $bypass ; do
mv -v "$file" XXXXXX"$c".jpg
c=$(( c + 1 ))
cd $diratual
done



rm /tmp/temporario
