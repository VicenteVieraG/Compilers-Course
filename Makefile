# -*- MakeFile -*-

main: lex.yy.o
	gcc lex.yy.o -o main.out -ll

lex.yy.o: lex.yy.c
	gcc -c lex.yy.c

lex.yy.c: lexer.l
	lex lexer.l

clean:
	rm *.o
	rm lex.yy.c