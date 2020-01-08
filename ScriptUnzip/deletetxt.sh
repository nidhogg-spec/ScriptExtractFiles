# !/bin/bash 

for t in ./*/; do
	(cd "$a";
	search=$(find . -name '*.txt')
	rm $search)
done
