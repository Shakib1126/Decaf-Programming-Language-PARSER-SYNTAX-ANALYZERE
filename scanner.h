/* The filename is Scanner.h
 */

#ifndef _H_scanner
#define _H_scanner

#include <stdio.h>

#define MaxIdentLen 31    // Maximum length for identifiers

extern char *yytext;     


int yylex();              

void InitScanner();                 
const char *GetLineNumbered(int n); 
 
#endif
