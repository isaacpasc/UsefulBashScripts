Script 2, makeHeader.sh:
This script will print a header with the current date and the user's name/description to stdout.
Syntax: ./makeHeader.sh [name] [description]

EXAMPLE:
Use Case: ./makeHeader.sh “John Doe” “This is my description” 
Output:
/*
Author: John Doe
Date: 09/15/2020
Description: This is my description.
*/

Script 3, cTemplateMaker.sh:
This script creates a C or C++ template file. 
Syntax: ./cTemplateMaker.sh [-c|-cpp]

EXAMPLE:
Use Case: ./cTemplateMaker.sh -c
Output:
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char** argv)
{
        //TODO: Code goes here
} return 0;

Script 4, cCodeMaker.sh:
This script combines the makeHeader.sh and cTemplate.sh but MUST be run with both scripts in the same directory as it invokes them both. If -o flag is used along with the name of a new file, the stdout will also be saved to a new file. WARNING: any file in the same directory with the same file name will be overwritten!
Syntax: ./cCodeMaker.sh [-c|-cpp] [name] [description] -o [outputfile] (outputs to stdout and file) 
or ./cCodeMaker.sh [-c|-cpp] [name] [description] (outputs to stdout)

EXAMPLE:
Use Case:
./cCodeMaker.sh -cpp "John Doe" "This is a test" -o fileName.cpp
Output: (to stdout and fileName.cpp)
/*
Author: John Doe
Date: 09/15/2020
Description: This is a test
*/
#include <iostream>
#include <stdlib.h>
using namespace std;

int main(int argc, char** argv)
{
        //TODO: Main code
	return 0; 
}

Script 5, openallcode.sh:
This script finds all files that have the extensions: .h, .hpp, .c, .cpp, .cc and concatenates them to stdout.
Syntax: ./openallcode.sh