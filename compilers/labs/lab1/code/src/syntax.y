%locations // Enable location tracking

%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// Declare external variables and functions
extern int yylineno;    // Current line number
extern char* yytext;    // Text of the current token
extern int yylex();     // Lexer interface function

void yyerror(const char* s); // Error handling function

int Err = 0;             // Error flag indicating whether an error has occurred
int lastErrLineno = 0;   // Record the line number of the last error

// Define a structure 'Node' to represent a node in the syntax tree
struct Node {
    struct Node* child;     // Pointer to the child node
    struct Node* brother;   // Pointer to the sibling node
    int linenumber;         // Line number of the node
    char index[15];         // Node type or identifier name
    short judge;            // Flag to determine the type of node
    union {                 // Union to store different types of node values
        char char_name[30]; // String type
        int int_number;     // Integer type
        float float_number; // Float type
    };
};

#define YYSTYPE struct Node*  // Define YYSTYPE type, representing the return type of the lexer

struct Node* head = NULL;  // Pointer to the root node of the syntax tree
struct Node* create_Node(struct Node* ch, char* name, int line); // Function declaration to create a node
void print_tree(struct Node* now, int depth); // Function declaration to print the syntax tree
void printError(char errorType, char* msg);   // Function declaration to print error messages
int isNewError(int errorLineno);                // Function declaration to check if it is a new error
%}

// Define tokens; each token corresponds to a lexical unit
%token STRUCT
%token RETURN
%token IF
%token ELSE
%token WHILE
%token SEMI
%token COMMA
%token ASSIGNOP
%token PLUS
%token MINUS
%token STAR
%token DIV
%token AND
%token OR
%token NOT
%token LP
%token RP
%token LB
%token RB
%token LC
%token RC
%token TYPE
%token INT
%token FLOAT
%token ID
%token RELOP
%token DOT

// Define operator associativity
%right ASSIGNOP            // Assignment operator (right-associative)
%left OR                    // Logical OR operator (left-associative)
%left AND                   // Logical AND operator (left-associative)
%left RELOP                 // Relational operators (left-associative)
%left PLUS MINUS            // Addition and subtraction (left-associative)
%left STAR DIV              // Multiplication and division (left-associative)
%right LOWER_THAN_NOT NOT   // Logical NOT operator (right-associative)
%right DOT LP LB RP RB      // Dot and parentheses (right-associative)
%nonassoc LOWER_THAN_ELSE   // Non-associative operator lower than ELSE
%nonassoc ELSE              // ELSE operator (non-associative)

%%

Program: ExtDefList {
    if ($1->int_number == 0) // If ExtDefList returns an integer value of 0
        $$ = create_Node($1, "Program\0", $1->linenumber); // Create a "Program" node with line number from $1
    else // Otherwise
        $$ = create_Node($1, "Program\0", @1.first_line); // Create a "Program" node with line number from @1.first_line
};

ExtDefList:
    {
        $$ = create_Node(NULL, "ExtDefList\0", yylineno); // Create an "ExtDefList" node with the current line number
        $$->int_number = 0; // Set the node's integer value to 0
    }
  | ExtDef ExtDefList {
        $$ = create_Node($1, "ExtDefList\0", @1.first_line); // Create an "ExtDefList" node with line number from @1.first_line
        $$->int_number = 2; // Set the node's integer value to 2
        $1->brother = $2; // Link the first child node with the second child node
    }
;

ExtDef:
    Specifier ExtDecList SEMI {
        $$ = create_Node($1, "ExtDef\0", @1.first_line); // Create an "ExtDef" node with line number from @1.first_line
        $1->brother = $2; // Link Specifier and ExtDecList nodes
        $2->brother = $3; // Link ExtDecList and SEMI node
    }
  | Specifier SEMI {
        $$ = create_Node($1, "ExtDef\0", @1.first_line); // Create an "ExtDef" node with line number from @1.first_line
        $1->brother = $2; // Link Specifier and SEMI node
    }
  | Specifier FunDec CompSt {
        $$ = create_Node($1, "ExtDef\0", @1.first_line); // Create an "ExtDef" node with line number from @1.first_line
        $1->brother = $2; // Link Specifier and FunDec nodes
        $2->brother = $3; // Link FunDec and CompSt nodes
    }
  | Specifier error {
        Err = 1; // Set error flag to 1
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', "Missing \";\""); // Print error message
    }
;

ExtDecList:
    VarDec {
        $$ = create_Node($1, "ExtDecList\0", @1.first_line); // Create an "ExtDecList" node with line number from @1.first_line
    }
  | VarDec COMMA ExtDecList {
        $$ = create_Node($1, "ExtDecList\0", @1.first_line); // Create an "ExtDecList" node with line number from @1.first_line
        $1->brother = $2; // Link VarDec and COMMA node
        $2->brother = $3; // Link COMMA and ExtDecList node
    }
  | VarDec error ExtDecList {
        Err = 1; // Set error flag to 1
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', "text"); // Print error message
    }
;

Specifier:
    TYPE {
        $$ = create_Node($1, "Specifier\0", @1.first_line); // Create a "Specifier" node with line number from @1.first_line
    }
  | StructSpecifier {
        $$ = create_Node($1, "Specifier\0", @1.first_line); // Create a "Specifier" node with line number from @1.first_line
    }
;

StructSpecifier:
    STRUCT OptTag LC DefList RC {
        $$ = create_Node($1, "StructSpecifier\0", @1.first_line); // Create a "StructSpecifier" node with line number from @1.first_line
        $1->brother = $2; // Link STRUCT and OptTag nodes
        $2->brother = $3; // Link OptTag and LC nodes
        $3->brother = $4; // Link LC and DefList nodes
        $4->brother = $5; // Link DefList and RC nodes
    }
  | STRUCT Tag {
        $$ = create_Node($1, "StructSpecifier\0", @1.first_line); // Create a "StructSpecifier" node with line number from @1.first_line
        $1->brother = $2; // Link STRUCT and Tag nodes
    }
;

OptTag:
    {
        $$ = create_Node(NULL, "OptTag\0", 0); // Create an "OptTag" node with line number 0
        $$->int_number = 0; // Set the node's integer value to 0
    }
  | ID {
        $$ = create_Node($1, "OptTag\0", @1.first_line); // Create an "OptTag" node with line number from @1.first_line
    }
;

Tag:
    ID {
        $$ = create_Node($1, "Tag\0", @1.first_line); // Create a "Tag" node with line number from @1.first_line
    }
;

VarDec:
    ID {
        $$ = create_Node($1, "VarDec\0", @1.first_line); // Create a "VarDec" node with line number from @1.first_line
    }
  | VarDec LB INT RB {
        $$ = create_Node($1, "VarDec\0", @1.first_line); // Create a "VarDec" node with line number from @1.first_line
        $1->brother = $2; // Link VarDec and LB nodes
        $2->brother = $3; // Link LB and INT nodes
        $3->brother = $4; // Link INT and RB nodes
    }
  | VarDec LB error RB {
        Err = 1; // Set error flag to 1
        char msg[32]; // Define buffer for error message
        sprintf(msg, "Syntax error, near '%c'", yytext[0]); // Format error message
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', msg); // Print error message
    }
;

FunDec:
    ID LP VarList RP {
        $$ = create_Node($1, "FunDec\0", @1.first_line); // Create a "FunDec" node with line number from @1.first_line
        $1->brother = $2; // Link ID and LP nodes
        $2->brother = $3; // Link LP and VarList nodes
        $3->brother = $4; // Link VarList and RP nodes
    }
  | ID LP RP {
        $$ = create_Node($1, "FunDec\0", @1.first_line); // Create a "FunDec" node with line number from @1.first_line
        $1->brother = $2; // Link ID and LP nodes
        $2->brother = $3; // Link LP and RP nodes
    }
  | ID LP error RP {
        Err = 1; // Set error flag to 1
        if (lastErrLineno != yylineno)  // If the last error line is not the current line
            printError('B', "Syntax error between ()"); // Print error message
    }
;

VarList:
    ParamDec COMMA VarList {
        $$ = create_Node($1, "VarList\0", @1.first_line); // Create a "VarList" node with line number from @1.first_line
        $1->brother = $2; // Link ParamDec and COMMA nodes
        $2->brother = $3; // Link COMMA and VarList nodes
    }
  | ParamDec {
        $$ = create_Node($1, "VarList\0", @1.first_line); // Create a "VarList" node with line number from @1.first_line
    }
;

ParamDec:
    Specifier VarDec {
        $$ = create_Node($1, "ParamDec\0", @1.first_line); // Create a "ParamDec" node with line number from @1.first_line
        $1->brother = $2; // Link Specifier and VarDec nodes
    }
;

CompSt:
    LC DefList StmtList RC {
        $$ = create_Node($1, "CompSt\0", @1.first_line); // Create a "CompSt" node with line number from @1.first_line
        $1->brother = $2; // Link LC and DefList nodes
        $2->brother = $3; // Link DefList and StmtList nodes
        $3->brother = $4; // Link StmtList and RC nodes
    }
;

StmtList:
    {
        $$ = create_Node(NULL, "StmtList\0", 0); // Create a "StmtList" node with line number 0
        $$->int_number = 0; // Set the node's integer value to 0
    }
  | Stmt StmtList {
        $$ = create_Node($1, "StmtList\0", @1.first_line); // Create a "StmtList" node with line number from @1.first_line
        $1->brother = $2; // Link Stmt and StmtList nodes
    }
;

Stmt:
    Exp SEMI {
        $$ = create_Node($1, "Stmt\0", @1.first_line); // Create a "Stmt" node with line number from @1.first_line
        $1->brother = $2; // Link Exp and SEMI nodes
    }
  | CompSt {
        $$ = create_Node($1, "Stmt\0", @1.first_line); // Create a "Stmt" node with line number from @1.first_line
    }
  | RETURN Exp SEMI {
        $$ = create_Node($1, "Stmt\0", @1.first_line); // Create a "Stmt" node with line number from @1.first_line
        $1->brother = $2; // Link RETURN and Exp nodes
        $2->brother = $3; // Link Exp and SEMI nodes
    }
  | IF LP Exp RP Stmt %prec LOWER_THAN_ELSE {
        $$ = create_Node($1, "Stmt\0", @1.first_line); // Create a "Stmt" node with line number from @1.first_line
        $1->brother = $2; // Link IF and LP nodes
        $2->brother = $3; // Link LP and Exp nodes
        $3->brother = $4; // Link Exp and RP nodes
        $4->brother = $5; // Link RP and Stmt nodes
    }
  | IF LP Exp RP Stmt ELSE Stmt {
        $$ = create_Node($1, "Stmt\0", @1.first_line); // Create a "Stmt" node with line number from @1.first_line
        $1->brother = $2; // Link IF and LP nodes
        $2->brother = $3; // Link LP and Exp nodes
        $3->brother = $4; // Link Exp and RP nodes
        $4->brother = $5; // Link RP and Stmt nodes
        $5->brother = $6; // Link Stmt and ELSE nodes
        $6->brother = $7; // Link ELSE and Stmt nodes
    }
  | WHILE LP Exp RP Stmt {
        $$ = create_Node($1, "Stmt\0", @1.first_line); // Create a "Stmt" node with line number from @1.first_line
        $1->brother = $2; // Link WHILE and LP nodes
        $2->brother = $3; // Link LP and Exp nodes
        $3->brother = $4; // Link Exp and RP nodes
        $4->brother = $5; // Link RP and Stmt nodes
    }
  | Exp error {
        Err = 1; // Set error flag to 1
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', "Missing \";\""); // Print error message
    }
;

DefList:
    {
        $$ = create_Node(NULL, "DefList\0", 0); // Create a "DefList" node with line number 0
        $$->int_number = 0; // Set the node's integer value to 0
    }
  | Def DefList {
        $$ = create_Node($1, "DefList\0", @1.first_line); // Create a "DefList" node with line number from @1.first_line
        $1->brother = $2; // Link Def and DefList nodes
    }
;

Def:
    Specifier DecList SEMI {
        $$ = create_Node($1, "Def\0", @1.first_line); // Create a "Def" node with line number from @1.first_line
        $1->brother = $2; // Link Specifier and DecList nodes
        $2->brother = $3; // Link DecList and SEMI nodes
    }
  | Specifier error SEMI {
        Err = 1; // Set error flag to 1
        char msg[32]; // Define buffer for error message
        sprintf(msg, "Syntax error, near '%c'", yytext[0]); // Format error message
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', msg); // Print error message
    }
  | Specifier DecList error {
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', "Missing \";\""); // Print error message
    }
;

DecList:
    Dec {
        $$ = create_Node($1, "DecList\0", @1.first_line); // Create a "DecList" node with line number from @1.first_line
    }
  | Dec COMMA DecList {
        $$ = create_Node($1, "DecList\0", @1.first_line); // Create a "DecList" node with line number from @1.first_line
        $1->brother = $2; // Link Dec and COMMA nodes
        $2->brother = $3; // Link COMMA and DecList nodes
    }
;

Dec:
    VarDec {
        $$ = create_Node($1, "Dec\0", @1.first_line); // Create a "Dec" node with line number from @1.first_line
    }
  | VarDec ASSIGNOP Exp {
        $$ = create_Node($1, "Dec\0", @1.first_line); // Create a "Dec" node with line number from @1.first_line
        $1->brother = $2; // Link VarDec and ASSIGNOP nodes
        $2->brother = $3; // Link ASSIGNOP and Exp nodes
    }
;

Exp:
    Exp ASSIGNOP Exp {
        $$ = create_Node($1, "Exp\0", @1.first_line); // Create an "Exp" node with line number from @1.first_line
        $1->brother = $2; // Link first Exp and ASSIGNOP nodes
        $2->brother = $3; // Link ASSIGNOP and second Exp nodes
    }
  | Exp AND Exp {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link first Exp and AND nodes
        $2->brother = $3; // Link AND and second Exp nodes
    }
  | Exp OR Exp {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link first Exp and OR nodes
        $2->brother = $3; // Link OR and second Exp nodes
    }
  | Exp RELOP Exp {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link first Exp and RELOP nodes
        $2->brother = $3; // Link RELOP and second Exp nodes
    }
  | Exp PLUS Exp {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link first Exp and PLUS nodes
        $2->brother = $3; // Link PLUS and second Exp nodes
    }
  | Exp MINUS Exp {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link first Exp and MINUS nodes
        $2->brother = $3; // Link MINUS and second Exp nodes
    }
  | Exp STAR Exp {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link first Exp and STAR nodes
        $2->brother = $3; // Link STAR and second Exp nodes
    }
  | Exp DIV Exp {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link first Exp and DIV nodes
        $2->brother = $3; // Link DIV and second Exp nodes
    }
  | LP Exp RP {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link LP and Exp nodes
        $2->brother = $3; // Link Exp and RP nodes
    }
  | MINUS Exp %prec LOWER_THAN_NOT {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link MINUS and Exp nodes
    }
  | NOT Exp {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link NOT and Exp nodes
    }
  | ID LP Args RP {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link ID and LP nodes
        $2->brother = $3; // Link LP and Args nodes
        $3->brother = $4; // Link Args and RP nodes
    }
  | ID LP RP {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link ID and LP nodes
        $2->brother = $3; // Link LP and RP nodes
    }
  | Exp LB Exp RB {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link first Exp and LB nodes
        $2->brother = $3; // Link LB and second Exp nodes
        $3->brother = $4; // Link second Exp and RB nodes
    }
  | Exp DOT ID {
        $$ = create_Node($1, "Exp\0", @1.first_line);
        $1->brother = $2; // Link Exp and DOT nodes
        $2->brother = $3; // Link DOT and ID nodes
    }
  | ID {
        $$ = create_Node($1, "Exp\0", @1.first_line);
    }
  | INT {
        $$ = create_Node($1, "Exp\0", @1.first_line);
    }
  | FLOAT {
        $$ = create_Node($1, "Exp\0", @1.first_line);
    }
  | Exp LB error RB {
        Err = 1; // Set error flag to 1
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', "Syntax error between \"[]\""); // Print error message
    }
  | Exp ASSIGNOP error {
        Err = 1;
        if (lastErrLineno != yylineno)
            printError('B', "Syntax error in Exp"); // Print error message
    }
  | LP error RP {
        Err = 1;
        if (lastErrLineno != yylineno)
            printError('B', "Syntax error in Exp"); // Print error message
    }
  | ID LP error RP {
        Err = 1;
        if (lastErrLineno != yylineno)
            printError('B', "Syntax error in Exp"); // Print error message
    }
  | Exp LB Exp error RB {
        Err = 1;
        if (lastErrLineno != yylineno)
            printError('B', "Missing \"]\""); // Print error message
    }
;

Args:
    Exp COMMA Args {
        $$ = create_Node($1, "Arg\0", @1.first_line); // Create an "Arg" node with line number from @1.first_line
        $1->brother = $2; // Link Exp and COMMA nodes
        $2->brother = $3; // Link COMMA and Args nodes
    }
  | Exp {
        $$ = create_Node($1, "Args\0", @1.first_line); // Create an "Args" node with line number from @1.first_line
    }
;

%%

#include "lex.yy.c"

// Create a new node
struct Node* create_Node(struct Node* ch, char* name, int line) {
    // Allocate memory for the new node
    struct Node* newnode = (struct Node*)malloc(sizeof(struct Node));
    // Set node properties
    newnode->judge = 1;             // judge = 1 indicates a non-terminal node
    newnode->child = ch;            // Set the child node
    newnode->brother = NULL;        // Initialize sibling pointer to NULL
    newnode->linenumber = line;     // Set the line number
    newnode->int_number = 1;        // Set the integer value
    strcpy(newnode->index, name);   // Set the node name
    head = newnode;                 // Update the global head pointer to the current node
    return newnode;                 // Return the new node
}

// Print node information
void print_node(struct Node* now) {
    // If it is a terminal or its integer value is non-zero
    if (now->judge == 0 || now->int_number) {
        // Print information based on node type
        if (!strcmp(now->index, "ID\0")) {
            printf("ID: %s\n", now->char_name); // Print identifier
        } else if (!strcmp(now->index, "TYPE\0")) {
            printf("TYPE: %s\n", now->char_name); // Print type
        } else if (!strcmp(now->index, "INT\0")) {
            printf("INT: %u\n", now->int_number); // Print integer value
        } else if (!strcmp(now->index, "FLOAT\0")) {
            printf("FLOAT: %f\n", now->float_number); // Print float value
        } else {
            printf("%s\n", now->index); // Print other node types
        }
    } else {
        printf("%s (%d)\n", now->index, now->linenumber); // Print non-terminal node information
    }
}

// Print the syntax tree
void print_tree(struct Node* now, int depth) {
    // If it is a terminal or its integer value is non-zero
    if (now->judge == 0 || now->int_number) {
        // Indent according to the depth
        for (int i = 0; i < depth; ++i)
            printf("  ");
        // Print node information
        print_node(now);
    }
    // Recursively print child nodes
    if (now->child != NULL)
        print_tree(now->child, depth + 1);
    // Recursively print sibling nodes
    if (now->brother != NULL)
        print_tree(now->brother, depth);
    return;
}

// Print error message
void printError(char errorType, char* msg) {
    // Print error type, line number, and error message
    fprintf(stderr, "Error type %c at Line %d: %s.\n", errorType, yylineno, msg);
    lastErrLineno = yylineno; // Record the error line number
}

// Dummy function to avoid compiler errors
void yyerror(const char* s) {}
