#!/bin/bash

eCollection=( $(cut -f 2  data.csv ) )
for ((i=1; i<${#eCollection[@]}; i++)); do
	(cd "${eCollection[i]}";
	 search=$(find . -name '*.rar' -o -name '*.zip')
	 for files in $search; do
		 unrar x $files
	 done);
done
