#!/bin/bash
fswatch -xn . | while read file event; do 
   echo $file
   if [[ $file == *.png ]]
   then
	echo OKAY
	file_name=$(basename $file)
   	curl --form "fileupload=@$file" "http://uploads.im/api?upload" -o "../../URL_Display/data/$file_name.json"
   fi
done
