parser: y.tab.c lex.yy.c y.tab.h
	gcc y.tab.c lex.yy.c  -g -ll -ly  -o parser
lex.yy.c: syntax.l
	lex syntax.l
y.tab.c: syntax.y
	yacc -v -d syntax.y
clean:
	rm -f parser y.tab.c lex.yy.c y.tab.h y.output
