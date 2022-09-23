while IFS= read -r line; 
do 
    echo $line > a.txt
	grep -wF "abc" a.txt
done < strings.txt
rm a.txt