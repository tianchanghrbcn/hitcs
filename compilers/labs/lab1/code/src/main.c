/***************************************************************
 * File: main.c
 * Description:
 *   The main entry point for the C-- compiler front-end.
 *   It opens the specified input file, initializes the lexer,
 *   runs the parser, and, if no errors are found, prints the
 *   resulting syntax tree.
 ***************************************************************/

#include <stdio.h>
#include <stdlib.h>

/* External declarations from the lexer and parser. */
extern FILE *yyin;         /* File pointer for the lexer input */
extern int yylineno;       /* Current line number in the source file */
extern int Err;            /* Error flag: 0 means no error, nonzero means error(s) occurred */
extern struct Node *head;  /* Pointer to the root of the syntax tree */

/* Bison/Flex-generated functions. */
extern int yylex(void);            /* Lexer function */
extern int yyparse(void);          /* Parser function */
extern void yyrestart(FILE *fp);   /* Resets the lexer input stream */

/* Function to print the syntax tree. */
extern void print_tree(struct Node *root, int depth);

int main(int argc, char **argv)
{
    /* Check if a filename was provided. */
    if (argc <= 1) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return 1;
    }

    /* Open the file specified by the user. */
    FILE *fp = fopen(argv[1], "r");
    if (!fp) {
        perror(argv[1]);  /* Print the error message for file I/O issues */
        return 1;
    }

    /* Initialize line number and set up lexer to read from the file. */
    yylineno = 1;
    yyrestart(fp);

    /* Run the parser (which internally calls the lexer). */
    yyparse();

    /* If no errors occurred during lexical or syntactic analysis, print the AST. */
    if (Err == 0) {
        print_tree(head, 0);
    }

    /* Clean up and exit. */
    fclose(fp);
    return 0;
}
