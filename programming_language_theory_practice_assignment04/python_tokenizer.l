%{
	#include <stdio.h>
%}
%option noyywrap
D	[0-9]
L	[a-zA-Z_]
identifier	{L}({L}|{D})*
integer	{D}+
float	{D}+"."{D}+
string	\"([^\\\"]|\\.)*\"
whitespace [ \t\n]
%%
False|None|True|__peg_parser__|and|as|assert|async|await|break|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|nonlocal|not|or|pass|raise|return|try|while|with|yield	{ printf("keyword : %s\n", yytext); }

\+|\-|\*|\/|\/\/|\%|\*\*|==|\!=|\<|\<=|\>|\>=|\&|\||\^|\~|\@|\:|\,|\;|=|\(|\)|\[|\]|\{|\}|\.|\<\<|\>\>|\+=|\-=|\*=|\/=|\/\/=|\%=|\*\*=|\&=|\|=|\^=|\~=	 { printf("operator : %s\n", yytext); }

{identifier}	{ printf("operator : %s\n", yytext); }

{integer}	{ printf("integer : %s\n", yytext); }

{string}	{ printf("string : %s\n", yytext); }

{whitespace}	{ printf("whitespace\n"); }

.	{ printf("not recognized: %s\n", yytext); }

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
