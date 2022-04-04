/* The Filename is main.cc
 * -------------
 * As the name suggests, it controls and executes the main routine of the project
 */
 
#include <string.h>
#include <stdio.h>
#include "utility.h"
#include "errors.h"
#include "parser.h"


/* Function: main()
 * Entry point to the entire program.
 * InitScanner() is used to set up the scanner.
 * InitParser() is used to set up the parser. The call to yyparse() will
 * attempt to parse a complete program from the input. 
 */
int main(int argc, char *argv[])
{
    ParseCommandLine(argc, argv);
    InitScanner();
    InitParser();
    yyparse();
    return (ReportError::NumErrors() == 0? 0 : -1);
}

