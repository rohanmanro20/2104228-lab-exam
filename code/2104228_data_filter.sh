#!/bin/bash


file_name=$1
field_name=$2
field_value=$3

top_2_char=${file_name:0:2}

#above are under the assumption that the user will always give the file name and not the path name
#once taken the inputs from the positional arguments generating appropriate file name
saving_file_name="$top_2_char"_"$field_name"_"$field_value.csv"


#checking if the file already exists due to old execution then it will be removed
if [ -e $saving_file_name ];
then 
	rm $saving_file_name
fi

#creating the file
touch $saving_file_name


#finding the number of relevant matches

x=$(grep -iw "$field_value" $file_name|wc -l)

#creating the correct string
first_line="$file_name","$field_name","$field_value","$x"

second_line=$(head -n 1 $file_name)

#addding the lines to the file
echo $first_line >> $saving_file_name
echo $second_line >> $saving_file_name

#adding the matches to the file

grep -iw "$field_value" $file_name >> $saving_file_name

#Rohan Manro 2104228 Question 9
