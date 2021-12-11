#!/bin/bash

flag=$1;

#check for -cpp
if [ "$flag" = "-cpp" ]
then
    cat <<EOF
#include <iostream>
#include <stdlib.h>
using namespace std;

int main(int argc, char** argv)
{
        //TODO: Main code
        return 0;
}
EOF
#check for -c
elif [ "$flag" = "-c" ]
then
    cat <<EOF                                                                                                                 
#include <stdio.h>                                                                                                               
#include <stdlib.h>
                                                                                                                                                                                                                                        
int main(int argc, char** argv)                                                                                                   
{                                                                                                                                 
        //TODO: Main code                                                                                                         
        return 0;                                                                                                                 
}                                                                                                                                 
EOF
else
    echo "usage: ./cTemplateMaker.sh [-c|-cpp]";
fi
