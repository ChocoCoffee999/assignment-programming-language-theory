%{
#include <stdlib.h>
#include "y.tab.h"
%}

%%

 /* variables */
[A-Za-z]	{	
				if (*yytext > 'Z') yylval = *yytext - 'a' + 26;
				else yylval = *yytext - 'A';
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
