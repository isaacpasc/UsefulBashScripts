#!/bin/bash

#save line args
flag=$1;
name=$2;
desc=$3;
outputFlag=$4;
outputFile=$5;

#check if line args are null
valid=true;
validOutput=true;
if [ -z "$outputFlag" ]
then
    outputValid=false;
fi
if [ -z "$flag" ]
then
    valid=flase;
fi
if [ -z "$desc" ]
then
    valid=false;
fi
if [ -z "$name" ]
then
    valid=false;
fi

#invoke correct scripts
if [ "$outputValid" = false ]
then
    if [ "$valid" = true ]
    then
	:
	if [ "$flag" = "-cpp" ]
	then
	    { ./makeHeader.sh $name $desc && ./cTemplateMaker.sh -cpp; }
	elif [ "$flag" = "-c" ] 
	then
	    { ./makeHeader.sh $name $desc && ./cTemplateMaker.sh -c; }
	else
	    echo "usage: ./cTemplateMaker.sh [-c|-cpp] [name] [description] -o [outputfile]";
	fi
    else
	echo "usage: ./cTemplateMaker.sh [-c|-cpp] [name] [description] -o [outputfile]";
    fi
elif [ "$outputFlag" = "-o" ]
then
    echo"";
    if [ ! -z "$outputFile" ]
    then
	:
	if [ "$flag" = "-cpp" ]
	then
	    { ./makeHeader.sh $name $desc && ./cTemplateMaker.sh -cpp; } | tee "$outputFile"
	elif [ "$flag" = "-c" ]
	then
	    { ./makeHeader.sh $name $desc && ./cTemplateMaker.sh -c; } | tee "$outputFile"
	else
	    echo "usage: ./cTemplateMaker.sh [-c|-cpp] [name] [description] -o [outputfile]";
	fi
    else
	echo "usage: ./cTemplateMaker.sh [-c|-cpp] [name] [description] -o [outputfile]";
    fi	
else
    echo "usage: ./cTemplateMaker.sh [-c|-cpp] [name] [description] -o [outputfile]";
fi
