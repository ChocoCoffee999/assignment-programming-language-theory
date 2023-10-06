%{
	#include <stdio.h>
%}
%option noyywrap
D	[0-9]
%%
if|then|else|end|repeat|until|read|write	{ printf("keyword"); }
[A-Za-z_][0-9A-Za-z_]*	{ printf("identifier"); }
{D}+	{ printf("integer"); }
{D}+"."{D}+	{ printf("float"); }
[\+\-\*\/]	{ printf("operator"); }

%%
int main(argc, argv) int argc; char **argv;
{
	++argv, --argc;
	if (argc > 0) {
		 yyin = fopen(argv[0], "r");
	}
	else yyin = stdin;	yylex();
	return 1;
}
