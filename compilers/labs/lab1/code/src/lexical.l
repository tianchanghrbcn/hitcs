%option yylineno
%{
#include "syntax.tab.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int yycolumn = 1;
extern int Err;
extern void printError(char type, char* msg);

struct Node* create_Node_l(char* name) {
    struct Node* newnode = (struct Node*)malloc(sizeof(struct Node));
    newnode->judge = 0;
    newnode->child = NULL;
    newnode->brother = NULL;
    newnode->linenumber = yylineno;
    strcpy(newnode->index, name);
    return newnode;
}
%}

IGNORE      [\r \t]+
CHANGELINE  \n
OCT         0[0-7]+
HEX         0[xX][0-9A-Fa-f]+
EXP_PART    [eE][+-]?[0-9]+
FLOAT_WITH_EXP (([0-9]+\.[0-9]*|[0-9]*\.[0-9]+|[0-9]+)\{EXP_PART\})
FLOAT_BASE  [0-9]+\.[0-9]+
COMMENT_SL  "//".*
COMMENT_BL  "/\\*"
COMMENT_BL_END "\\*/"

%%
";"          { yylval = create_Node_l("SEMI"); return SEMI; }
","          { yylval = create_Node_l("COMMA"); return COMMA; }
"="          { yylval = create_Node_l("ASSIGNOP"); return ASSIGNOP; }
">="|"<="|"=="|"!="|">"|"<"  { yylval = create_Node_l("RELOP"); return RELOP; }
"+"          { yylval = create_Node_l("PLUS"); return PLUS; }
"-"          { yylval = create_Node_l("MINUS"); return MINUS; }
"*"          { yylval = create_Node_l("STAR"); return STAR; }
"/"          { yylval = create_Node_l("DIV"); return DIV; }
"&&"         { yylval = create_Node_l("AND"); return AND; }
"||"         { yylval = create_Node_l("OR"); return OR; }
"."          { yylval = create_Node_l("DOT"); return DOT; }
"!"          { yylval = create_Node_l("NOT"); return NOT; }
int|float    { yylval = create_Node_l("TYPE"); strcpy(yylval->char_name, yytext); return TYPE; }
"("          { yylval = create_Node_l("LP"); return LP; }
")"          { yylval = create_Node_l("RP"); return RP; }
"["          { yylval = create_Node_l("LB"); return LB; }
"]"          { yylval = create_Node_l("RB"); return RB; }
"{"          { yylval = create_Node_l("LC"); return LC; }
"}"          { yylval = create_Node_l("RC"); return RC; }
"struct"     { yylval = create_Node_l("STRUCT"); return STRUCT; }
"return"     { yylval = create_Node_l("RETURN"); return RETURN; }
"if"         { yylval = create_Node_l("IF"); return IF; }
"else"       { yylval = create_Node_l("ELSE"); return ELSE; }
"while"      { yylval = create_Node_l("WHILE"); return WHILE; }
{IGNORE}     { }
{CHANGELINE} { yycolumn = 1; }
{COMMENT_SL} { }
{COMMENT_BL} {
    int c;
    int possible_error = 1;
    while (1) {
        c = input();
        if (c == 0) {
            char msg[64];
            sprintf(msg, "Unclosed block comment");
            printError('A', msg);
            Err = 1;
            break;
        }
        if (c == '*') {
            c = input();
            if (c == '/') {
                possible_error = 0;
                break;
            } else {
                if (c == 0) {
                    char msg2[64];
                    sprintf(msg2, "Unclosed block comment");
                    printError('A', msg2);
                    Err = 1;
                    break;
                }
                unput(c);
            }
        }
        if (c == '\n') {
            yylineno++;
            yycolumn = 1;
        } else {
            yycolumn++;
        }
    }
    if (possible_error) {
    }
}
{COMMENT_BL_END} {
    char msg[64];
    sprintf(msg, "Mysterious character '%s'", yytext);
    printError('A', msg);
    Err = 1;
}
{HEX} {
    yylval = create_Node_l("INT");
    yylval->int_number = (int)strtol(yytext, NULL, 16);
    return INT;
}
{OCT} {
    yylval = create_Node_l("INT");
    yylval->int_number = (int)strtol(yytext, NULL, 8);
    return INT;
}
{FLOAT_WITH_EXP} {
    yylval = create_Node_l("FLOAT");
    yylval->float_number = (float)strtod(yytext, NULL);
    return FLOAT;
}
{FLOAT_BASE} {
    yylval = create_Node_l("FLOAT");
    yylval->float_number = atof(yytext);
    return FLOAT;
}
0|[1-9][0-9]* {
    yylval = create_Node_l("INT");
    yylval->int_number = atoi(yytext);
    return INT;
}
[_a-zA-Z][_a-zA-Z0-9]* {
    yylval = create_Node_l("ID");
    strcpy(yylval->char_name, yytext);
    return ID;
}
. {
    char msg[64];
    sprintf(msg, "Mysterious character '%s'", yytext);
    printError('A', msg);
    Err = 1;
}
%%
int yywrap() { return 1; }