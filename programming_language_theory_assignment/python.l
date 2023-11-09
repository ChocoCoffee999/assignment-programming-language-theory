D	[0-9]
%%
{D}+	{ printf("integer"); }
({D}+\.{D}*|{D}*\.{D}+)	{ printf("float"); }
(\"[^"]\"|'[^']')	{ printf("char"); }
[A-Za-z_][0-9A-Za-z_]*	{ printf("identifier"); }
(if|else|elif|while|for|in|def|class|return|import|True|False|None|and|or|not|is|global)	{ printf("keyword"); }
(+|-|*|/|%|//|**|>|<|==|!=|>=|<=|=|+=|-=|*=|/=|%=|//=|**=|&=|\|=|^=|>>=|<<=|&|\||~|^|>>|<<)	{ printf("operator"); }
