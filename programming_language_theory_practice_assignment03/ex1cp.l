%{
#include <stdlib.h>
#include "y.tab.h"
%}

%%

 /* variables */
[A-Z]		{	
				yylval = *yytext - 'A';
				return VARIABLE;
			}
[a-z]		{
				yylval = *yytext - 'a' + 26;
				return VARIABLE;
			}

 /* integer */
[0-9]+		{
				yylval = atoi(yytext);
				return INTEGER;
			}

 /* operators */
[-+()=/*%\n]	{ return *yytext; }

 /* skip whitespace */
[ \t]	;

 /* anything else is an error */
.	yyerror("invalid character");

%%

int yywrap(void) {
	return 1;
}
