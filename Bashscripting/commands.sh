#!/bin/bash

#defining alias for rm command


rmsafe () {
	echo "You are about to do something dangerous"
	ISDIR=false	
	NAMEFILE=$1
	MESSAGE="Are you sure to erase "
	MARK="?"
	WHOLE=$MESSAGE$NAMEFILE$MARK
		
	if [ -d "$NAMEFILE" ]
	then isDirectory =true; echo "You are trying to delete DIRECTORY :""$NAMEFILE"
	else
		echo "You want to delete FILE:""$NAMEFILE"
	fi
	
	echo "$WHOLE"
	read -p "Please choose yes or no: " -n 1 -r
	echo 	
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
	 if [ $ISDIR = true ]
	 then 
	   echo "Deleting the directory and its content"
	   rmdir -r "$NAMEFILE"
           echo "Directory ""$NAMEFILE"" has been deleted now"
	 else 
           echo "Deleting the file..."
	   rm "$NAMEFILE"
           echo "File ""$NAMEFILE"" has been deleted now"
	 fi		
	else
	   echo "Deletion cancelled"
	fi
}







