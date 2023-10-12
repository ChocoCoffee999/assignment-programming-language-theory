D	[0-9]
%%
{D}+	{ printf("integer"); }
({D}+\.{D}*|{D}*\.{D}+)	{ printf("float"); }
(\"[^"]\"|'[^']')	{ printf("char"); }
[A-Za-z_][0-9A-Za-z_]*	{ printf("identifier"); }
(False|None|True|and|as|assert|break|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|nonlocal|not|or|pass|raise|return|try|while|with|yield)	{ printf("keyword"); }
(+|-|*|/|%|//|**|>|<|==|!=|>=|<=|=|+=|-=|*=|/=|%=|//=|**=|&=|\|=|^=|>>=|<<=|&|\||~|^|>>|<<)	{ printf("operator"); }
