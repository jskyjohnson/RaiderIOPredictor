#!/bin/bash
while read STRING;
do
	echo "${STRING//[^0-9]/}"
done < New.txt > realmlist.txt
