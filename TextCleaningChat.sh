for file in *; do #Go through all files

    #in each file, search for a line that starts with @ID and has "Target"
    #keep everything before the "Target", cut everything other than age
    #in our example "1;02.11", and save it in the variable age
	age=$(cat $file | grep '@ID.*Target' | cut -c19-25)
    
    #removing all unwanted characters, changing *CHI to XYZ (for 
    #the later on programming purpose)
	txt=$(cat $file | grep -e '*' | grep -v '%' | grep -v '*CHI' | sed 's/\[.*//' | 
        cut -c5- |awk '$0="XYZ"$0' | tr -d '0123456789_!?.()+<>') 
        
    #saving the extracted text to a file containing the child name and the age.    
	echo $txt > test/ChildName-$age.txt
done
