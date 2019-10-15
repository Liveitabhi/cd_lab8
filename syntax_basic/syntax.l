%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "y.tab.h"
%}
alpha [A-Za-z]
digit [0-9]
%%

"int"								return INT;
"char"								return CHAR;
"float"								return FLOAT;
{alpha}({alpha}|{digit})*    					{strcpy(yylval.lexeme, yytext); return ID; }
{digit}+ 							{yylval.dval = atoi(yytext); return INTCONST;}
{digit}*[.]{digit}+						{yylval.fval = atof(yytext); return FLOATCONST;}
"=" 								return ASGN;
"["								return LSB;
"]"								return RSB;
"{"								return LCB;
"}"								return RCB;
";"								return SCOL;
","								return COMMA;

[ \t\n] ;      /* ignore white space */

"\n"								

"$"								{ return 0; }

.  								{ return yytext[0]; }
%%
