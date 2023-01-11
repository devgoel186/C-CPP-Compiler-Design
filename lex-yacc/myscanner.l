%{
    #include "myscanner.h"
    #include <stdlib.h>
    #include <stdio.h>
%}

%%

:                       return COLON;
"db_type"               return TYPE;
"db_name"               return NAME;
"db_table_prefix"       return TABLE_PREFIX;
"db_port"               return PORT;

[a-zA-Z][_a-zA-Z0-9]*   return IDENTIFIER;
[1-9][0-9]*             return INTEGER;
[ \t\n]                 ;
.                       printf("Unexpected character\n");

%%

int yywrap(void) 
{
    return 1;
}

int main(void) 
{
    int ntoken, vtoken;
    ntoken = yylex();
    while(ntoken)
    {
        printf("%d\n", ntoken);
        /* printf("%s %d %s", yytext, yyleng, yylval); */

        /* if(yylex() != COLON)
        {
            printf("Syntax error in line %d, Expected a ':' but found %s\n", yylineno, yytext);
            return 1;
        }

        vtoken = yylex();
        switch(ntoken)
        {

        } */

        ntoken = yylex();
    }

    return 0;
}

