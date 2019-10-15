%{
#include<stdio.h>
#include<bits/sdtc++.h>
#include<string.h>
#include<stdlib.h>
extern FILE * yyin;

int yylex();
int yyerror(char *);
stack < set <  

%}

%union {
	 int dval;
	 float fval;
	 char lexeme[20];
}

%token INT CHAR FLOAT INTCONST FLOATCONST	ID ASGN		LSB RSB LCB RCB		COMMA SCOL

%%
 
P	:	BS;
BS	:	B BS | ;
B	:	BCB 

%%

int main(int argc, char *argv[])
{
  yyin = fopen(argv[1], "r");
  yyparse();
}


int yyerror(char *s){
  printf("\n\nError: %s\n", s);
}

