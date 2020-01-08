# !/bin/bash 
# Programa que extrae los .zip y .rar de las subcarpetas"
#sed -i -e "$date" log.txt
date=$(date +"%d-%b-%y %H:%M:%S")
exec > log.txt 2>&1
echo -e "\n$date\n"
dataArray=( $(cut -f 2 data.csv) )
for ((i=1; i<${#dataArray[@]}; i++)); do
	(cd "${dataArray[i]}";
	search=$(find . -name '*.rar' -o -name '*.zip')
	   for files in $search; do
		   if [ ${files: -4} == ".rar" ]; then
			   unrar x -o+ $files	
		   elif [ ${files: -4} == ".zip" ]; then
			   unzip -o $files
		   else
			   echo -e "\n No existe un rar para descomprimir\n"
		   fi
	   done
	);done
