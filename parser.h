/* FILENAME IS parser.h
 */

#ifndef _H_parser
#define _H_parser


  
#include "scanner.h"           
#include "list.h"       	
#include "ast.h"		
#include "ast_type.h"
#include "ast_decl.h"
#include "ast_expr.h"
#include "ast_stmt.h"

 
 

#ifndef YYBISON                 
#include "y.tab.h"              
#endif

int yyparse();              // Defined in the generated y.tab.c file
void InitParser();          // Defined in parser.y

#endif
