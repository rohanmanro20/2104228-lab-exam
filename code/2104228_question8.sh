#!/bin/bash

if [ -e ca_city_Montreal.csv ];
then 
	rm ca_city_Montreal.csv
fi

echo "Created ca_city_Montreal.csv"

head -n 1 ca_500.csv > ca_city_Montreal.csv
grep -iw 'Montreal' ca_500.csv >> ca_city_Montreal.csv

cat ca_city_Montreal.csv
#Rohan Manro 2104228 Question 8
