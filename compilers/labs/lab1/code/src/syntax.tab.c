/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 3 "./syntax.y"

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

#line 109 "./syntax.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "syntax.tab.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_STRUCT = 3,                     /* STRUCT  */
  YYSYMBOL_RETURN = 4,                     /* RETURN  */
  YYSYMBOL_IF = 5,                         /* IF  */
  YYSYMBOL_ELSE = 6,                       /* ELSE  */
  YYSYMBOL_WHILE = 7,                      /* WHILE  */
  YYSYMBOL_SEMI = 8,                       /* SEMI  */
  YYSYMBOL_COMMA = 9,                      /* COMMA  */
  YYSYMBOL_ASSIGNOP = 10,                  /* ASSIGNOP  */
  YYSYMBOL_PLUS = 11,                      /* PLUS  */
  YYSYMBOL_MINUS = 12,                     /* MINUS  */
  YYSYMBOL_STAR = 13,                      /* STAR  */
  YYSYMBOL_DIV = 14,                       /* DIV  */
  YYSYMBOL_AND = 15,                       /* AND  */
  YYSYMBOL_OR = 16,                        /* OR  */
  YYSYMBOL_NOT = 17,                       /* NOT  */
  YYSYMBOL_LP = 18,                        /* LP  */
  YYSYMBOL_RP = 19,                        /* RP  */
  YYSYMBOL_LB = 20,                        /* LB  */
  YYSYMBOL_RB = 21,                        /* RB  */
  YYSYMBOL_LC = 22,                        /* LC  */
  YYSYMBOL_RC = 23,                        /* RC  */
  YYSYMBOL_TYPE = 24,                      /* TYPE  */
  YYSYMBOL_INT = 25,                       /* INT  */
  YYSYMBOL_FLOAT = 26,                     /* FLOAT  */
  YYSYMBOL_ID = 27,                        /* ID  */
  YYSYMBOL_RELOP = 28,                     /* RELOP  */
  YYSYMBOL_DOT = 29,                       /* DOT  */
  YYSYMBOL_LOWER_THAN_NOT = 30,            /* LOWER_THAN_NOT  */
  YYSYMBOL_LOWER_THAN_ELSE = 31,           /* LOWER_THAN_ELSE  */
  YYSYMBOL_YYACCEPT = 32,                  /* $accept  */
  YYSYMBOL_Program = 33,                   /* Program  */
  YYSYMBOL_ExtDefList = 34,                /* ExtDefList  */
  YYSYMBOL_ExtDef = 35,                    /* ExtDef  */
  YYSYMBOL_ExtDecList = 36,                /* ExtDecList  */
  YYSYMBOL_Specifier = 37,                 /* Specifier  */
  YYSYMBOL_StructSpecifier = 38,           /* StructSpecifier  */
  YYSYMBOL_OptTag = 39,                    /* OptTag  */
  YYSYMBOL_Tag = 40,                       /* Tag  */
  YYSYMBOL_VarDec = 41,                    /* VarDec  */
  YYSYMBOL_FunDec = 42,                    /* FunDec  */
  YYSYMBOL_VarList = 43,                   /* VarList  */
  YYSYMBOL_ParamDec = 44,                  /* ParamDec  */
  YYSYMBOL_CompSt = 45,                    /* CompSt  */
  YYSYMBOL_StmtList = 46,                  /* StmtList  */
  YYSYMBOL_Stmt = 47,                      /* Stmt  */
  YYSYMBOL_DefList = 48,                   /* DefList  */
  YYSYMBOL_Def = 49,                       /* Def  */
  YYSYMBOL_DecList = 50,                   /* DecList  */
  YYSYMBOL_Dec = 51,                       /* Dec  */
  YYSYMBOL_Exp = 52,                       /* Exp  */
  YYSYMBOL_Args = 53                       /* Args  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL \
             && defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
  YYLTYPE yyls_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE) \
             + YYSIZEOF (YYLTYPE)) \
      + 2 * YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  11
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   272

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  32
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  22
/* YYNRULES -- Number of rules.  */
#define YYNRULES  71
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  131

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   286


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    84,    84,    92,    96,   104,   109,   113,   118,   126,
     129,   134,   142,   145,   151,   158,   165,   169,   175,   181,
     184,   190,   200,   206,   211,   219,   224,   230,   237,   246,
     250,   257,   261,   264,   269,   276,   285,   292,   300,   304,
     311,   316,   323,   330,   333,   341,   344,   352,   357,   362,
     367,   372,   377,   382,   387,   392,   397,   401,   405,   411,
     416,   422,   427,   430,   433,   436,   441,   446,   451,   456,
     464,   469
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "STRUCT", "RETURN",
  "IF", "ELSE", "WHILE", "SEMI", "COMMA", "ASSIGNOP", "PLUS", "MINUS",
  "STAR", "DIV", "AND", "OR", "NOT", "LP", "RP", "LB", "RB", "LC", "RC",
  "TYPE", "INT", "FLOAT", "ID", "RELOP", "DOT", "LOWER_THAN_NOT",
  "LOWER_THAN_ELSE", "$accept", "Program", "ExtDefList", "ExtDef",
  "ExtDecList", "Specifier", "StructSpecifier", "OptTag", "Tag", "VarDec",
  "FunDec", "VarList", "ParamDec", "CompSt", "StmtList", "Stmt", "DefList",
  "Def", "DecList", "Dec", "Exp", "Args", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-106)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-18)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
       6,   -16,  -106,    25,  -106,     6,    15,  -106,    29,    40,
    -106,  -106,  -106,  -106,  -106,    10,    64,    83,    61,     6,
      26,  -106,    71,    71,    18,     6,  -106,    14,    76,     6,
      81,  -106,    71,    85,    96,  -106,  -106,  -106,    87,    88,
     135,   102,    -2,     9,   103,  -106,  -106,  -106,    91,  -106,
       6,  -106,  -106,   245,    99,   104,   245,   245,    89,  -106,
    -106,   105,  -106,    98,   135,    45,  -106,   245,  -106,  -106,
      71,  -106,   155,   245,   245,    20,    20,   106,   187,    70,
    -106,  -106,  -106,  -106,   101,   245,   245,   245,   245,   245,
     245,   119,   245,    97,   220,  -106,  -106,   198,   209,  -106,
    -106,   110,  -106,   176,   111,  -106,   220,    34,    34,    20,
      20,   121,   230,   117,    65,   240,  -106,   135,   135,  -106,
     245,  -106,  -106,   122,  -106,   142,  -106,  -106,  -106,   135,
    -106
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       3,    16,    12,     0,     2,     3,     0,    13,    18,     0,
      15,     1,     4,     8,     6,    19,     0,     0,     0,    38,
       0,     5,     0,     0,     0,    38,     7,     0,     0,    38,
       0,    23,     0,     0,    26,    19,    11,    10,     0,     0,
      29,     0,    45,     0,    43,    14,    39,    24,    27,    22,
       0,    21,    20,     0,     0,     0,     0,     0,     0,    63,
      64,    62,    32,     0,    29,     0,    41,     0,    42,    40,
       0,    25,     0,     0,     0,    56,    57,     0,     0,     0,
      28,    30,    37,    31,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    46,    44,    33,     0,     0,    67,
      55,     0,    59,    71,     0,    66,    47,    51,    52,    53,
      54,    48,    49,     0,     0,    50,    61,     0,     0,    68,
       0,    58,    65,     0,    60,    34,    36,    70,    69,     0,
      35
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -106,  -106,   146,  -106,    47,     2,  -106,  -106,  -106,   -26,
    -106,   108,  -106,   136,    92,  -105,    39,  -106,    94,  -106,
     -53,    35
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
       0,     3,     4,     5,    16,    27,     7,     9,    10,    17,
      18,    33,    34,    62,    63,    64,    28,    29,    43,    44,
      65,   104
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      72,    42,     6,    75,    76,    78,    48,     6,    67,     1,
      68,     8,   125,   126,    94,    41,    13,    69,    24,    38,
      97,    98,    32,    14,   130,    11,   103,    30,    20,     1,
       2,   106,   107,   108,   109,   110,   111,   112,   114,   115,
      91,    35,    15,    39,    42,    31,    82,    87,    88,    93,
       2,   -17,    32,    83,    91,    84,    85,    86,    87,    88,
      89,    90,    19,    93,    40,    91,   123,   103,    46,    36,
      37,   101,    21,    92,    93,    84,    85,    86,    87,    88,
      89,    90,    56,    25,    22,    91,   124,    57,    58,   102,
      77,    -9,    23,    92,    93,    59,    60,    61,    35,    45,
      47,    56,   105,    24,    49,    50,    57,    58,    51,    52,
      66,    24,    70,    56,    59,    60,    61,    73,    57,    58,
     113,    80,    74,    79,   116,    99,    59,    60,    61,   119,
     121,    56,    85,    86,    87,    88,    57,    58,   122,    53,
      54,    91,    55,   128,    59,    60,    61,    56,   129,    92,
      93,    12,    57,    58,    26,   127,    81,    25,    71,     0,
      59,    60,    61,    96,    95,    84,    85,    86,    87,    88,
      89,    90,     0,     0,     0,    91,     0,     0,     0,     0,
       0,     0,     0,    92,    93,   120,    84,    85,    86,    87,
      88,    89,    90,     0,     0,     0,    91,    84,    85,    86,
      87,    88,    89,    90,    92,    93,   100,    91,    84,    85,
      86,    87,    88,    89,    90,    92,    93,   117,    91,    84,
      85,    86,    87,    88,    89,    90,    92,    93,   118,    91,
      84,    85,    86,    87,    88,    89,    90,    92,    93,     0,
      91,    85,    86,    87,    88,    89,     0,     0,    92,    93,
      91,    85,    86,    87,    88,     0,     0,    56,    92,    93,
      91,     0,    57,    58,     0,     0,     0,     0,     0,    93,
      59,    60,    61
};

static const yytype_int16 yycheck[] =
{
      53,    27,     0,    56,    57,    58,    32,     5,    10,     3,
       1,    27,   117,   118,    67,     1,     1,     8,    20,     1,
      73,    74,    20,     8,   129,     0,    79,     1,    18,     3,
      24,    84,    85,    86,    87,    88,    89,    90,    91,    92,
      20,    27,    27,    25,    70,    19,     1,    13,    14,    29,
      24,    22,    50,     8,    20,    10,    11,    12,    13,    14,
      15,    16,    22,    29,    25,    20,     1,   120,    29,    22,
      23,     1,     8,    28,    29,    10,    11,    12,    13,    14,
      15,    16,    12,    22,     1,    20,    21,    17,    18,    19,
       1,     8,     9,    28,    29,    25,    26,    27,    27,    23,
      19,    12,     1,    20,    19,     9,    17,    18,    21,    21,
       8,    20,     9,    12,    25,    26,    27,    18,    17,    18,
       1,    23,    18,    18,    27,    19,    25,    26,    27,    19,
      19,    12,    11,    12,    13,    14,    17,    18,    21,     4,
       5,    20,     7,    21,    25,    26,    27,    12,     6,    28,
      29,     5,    17,    18,    18,   120,    64,    22,    50,    -1,
      25,    26,    27,     8,    70,    10,    11,    12,    13,    14,
      15,    16,    -1,    -1,    -1,    20,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    28,    29,     9,    10,    11,    12,    13,
      14,    15,    16,    -1,    -1,    -1,    20,    10,    11,    12,
      13,    14,    15,    16,    28,    29,    19,    20,    10,    11,
      12,    13,    14,    15,    16,    28,    29,    19,    20,    10,
      11,    12,    13,    14,    15,    16,    28,    29,    19,    20,
      10,    11,    12,    13,    14,    15,    16,    28,    29,    -1,
      20,    11,    12,    13,    14,    15,    -1,    -1,    28,    29,
      20,    11,    12,    13,    14,    -1,    -1,    12,    28,    29,
      20,    -1,    17,    18,    -1,    -1,    -1,    -1,    -1,    29,
      25,    26,    27
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,    24,    33,    34,    35,    37,    38,    27,    39,
      40,     0,    34,     1,     8,    27,    36,    41,    42,    22,
      18,     8,     1,     9,    20,    22,    45,    37,    48,    49,
       1,    19,    37,    43,    44,    27,    36,    36,     1,    25,
      48,     1,    41,    50,    51,    23,    48,    19,    41,    19,
       9,    21,    21,     4,     5,     7,    12,    17,    18,    25,
      26,    27,    45,    46,    47,    52,     8,    10,     1,     8,
       9,    43,    52,    18,    18,    52,    52,     1,    52,    18,
      23,    46,     1,     8,    10,    11,    12,    13,    14,    15,
      16,    20,    28,    29,    52,    50,     8,    52,    52,    19,
      19,     1,    19,    52,    53,     1,    52,    52,    52,    52,
      52,    52,    52,     1,    52,    52,    27,    19,    19,    19,
       9,    19,    21,     1,    21,    47,    47,    53,    21,     6,
      47
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    32,    33,    34,    34,    35,    35,    35,    35,    36,
      36,    36,    37,    37,    38,    38,    39,    39,    40,    41,
      41,    41,    42,    42,    42,    43,    43,    44,    45,    46,
      46,    47,    47,    47,    47,    47,    47,    47,    48,    48,
      49,    49,    49,    50,    50,    51,    51,    52,    52,    52,
      52,    52,    52,    52,    52,    52,    52,    52,    52,    52,
      52,    52,    52,    52,    52,    52,    52,    52,    52,    52,
      53,    53
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     0,     2,     3,     2,     3,     2,     1,
       3,     3,     1,     1,     5,     2,     0,     1,     1,     1,
       4,     4,     4,     3,     4,     3,     1,     2,     4,     0,
       2,     2,     1,     3,     5,     7,     5,     2,     0,     2,
       3,     3,     3,     1,     3,     1,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     3,     2,     2,     4,     3,
       4,     3,     1,     1,     1,     4,     3,     3,     4,     5,
       3,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF

/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)                                \
    do                                                                  \
      if (N)                                                            \
        {                                                               \
          (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;        \
          (Current).first_column = YYRHSLOC (Rhs, 1).first_column;      \
          (Current).last_line    = YYRHSLOC (Rhs, N).last_line;         \
          (Current).last_column  = YYRHSLOC (Rhs, N).last_column;       \
        }                                                               \
      else                                                              \
        {                                                               \
          (Current).first_line   = (Current).last_line   =              \
            YYRHSLOC (Rhs, 0).last_line;                                \
          (Current).first_column = (Current).last_column =              \
            YYRHSLOC (Rhs, 0).last_column;                              \
        }                                                               \
    while (0)
#endif

#define YYRHSLOC(Rhs, K) ((Rhs)[K])


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)


/* YYLOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

# ifndef YYLOCATION_PRINT

#  if defined YY_LOCATION_PRINT

   /* Temporary convenience wrapper in case some people defined the
      undocumented and private YY_LOCATION_PRINT macros.  */
#   define YYLOCATION_PRINT(File, Loc)  YY_LOCATION_PRINT(File, *(Loc))

#  elif defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL

/* Print *YYLOCP on YYO.  Private, do not rely on its existence. */

YY_ATTRIBUTE_UNUSED
static int
yy_location_print_ (FILE *yyo, YYLTYPE const * const yylocp)
{
  int res = 0;
  int end_col = 0 != yylocp->last_column ? yylocp->last_column - 1 : 0;
  if (0 <= yylocp->first_line)
    {
      res += YYFPRINTF (yyo, "%d", yylocp->first_line);
      if (0 <= yylocp->first_column)
        res += YYFPRINTF (yyo, ".%d", yylocp->first_column);
    }
  if (0 <= yylocp->last_line)
    {
      if (yylocp->first_line < yylocp->last_line)
        {
          res += YYFPRINTF (yyo, "-%d", yylocp->last_line);
          if (0 <= end_col)
            res += YYFPRINTF (yyo, ".%d", end_col);
        }
      else if (0 <= end_col && yylocp->first_column < end_col)
        res += YYFPRINTF (yyo, "-%d", end_col);
    }
  return res;
}

#   define YYLOCATION_PRINT  yy_location_print_

    /* Temporary convenience wrapper in case some people defined the
       undocumented and private YY_LOCATION_PRINT macros.  */
#   define YY_LOCATION_PRINT(File, Loc)  YYLOCATION_PRINT(File, &(Loc))

#  else

#   define YYLOCATION_PRINT(File, Loc) ((void) 0)
    /* Temporary convenience wrapper in case some people defined the
       undocumented and private YY_LOCATION_PRINT macros.  */
#   define YY_LOCATION_PRINT  YYLOCATION_PRINT

#  endif
# endif /* !defined YYLOCATION_PRINT */


# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value, Location); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  YY_USE (yylocationp);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  YYLOCATION_PRINT (yyo, yylocationp);
  YYFPRINTF (yyo, ": ");
  yy_symbol_value_print (yyo, yykind, yyvaluep, yylocationp);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp, YYLTYPE *yylsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)],
                       &(yylsp[(yyi + 1) - (yynrhs)]));
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, yylsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep, YYLTYPE *yylocationp)
{
  YY_USE (yyvaluep);
  YY_USE (yylocationp);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Location data for the lookahead symbol.  */
YYLTYPE yylloc
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
  = { 1, 1, 1, 1 }
# endif
;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

    /* The location stack: array, bottom, top.  */
    YYLTYPE yylsa[YYINITDEPTH];
    YYLTYPE *yyls = yylsa;
    YYLTYPE *yylsp = yyls;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;
  YYLTYPE yyloc;

  /* The locations where the error started and ended.  */
  YYLTYPE yyerror_range[3];



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N), yylsp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  yylsp[0] = yylloc;
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;
        YYLTYPE *yyls1 = yyls;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yyls1, yysize * YYSIZEOF (*yylsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
        yyls = yyls1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
        YYSTACK_RELOCATE (yyls_alloc, yyls);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;
      yylsp = yyls + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      yyerror_range[1] = yylloc;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END
  *++yylsp = yylloc;

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];

  /* Default location. */
  YYLLOC_DEFAULT (yyloc, (yylsp - yylen), yylen);
  yyerror_range[1] = yyloc;
  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Program: ExtDefList  */
#line 84 "./syntax.y"
                    {
    if (yyvsp[0]->int_number == 0) // If ExtDefList returns an integer value of 0
        yyval = create_Node(yyvsp[0], "Program\0", yyvsp[0]->linenumber); // Create a "Program" node with line number from $1
    else // Otherwise
        yyval = create_Node(yyvsp[0], "Program\0", (yylsp[0]).first_line); // Create a "Program" node with line number from @1.first_line
}
#line 1383 "./syntax.tab.c"
    break;

  case 3: /* ExtDefList: %empty  */
#line 92 "./syntax.y"
    {
        yyval = create_Node(NULL, "ExtDefList\0", yylineno); // Create an "ExtDefList" node with the current line number
        yyval->int_number = 0; // Set the node's integer value to 0
    }
#line 1392 "./syntax.tab.c"
    break;

  case 4: /* ExtDefList: ExtDef ExtDefList  */
#line 96 "./syntax.y"
                      {
        yyval = create_Node(yyvsp[-1], "ExtDefList\0", (yylsp[-1]).first_line); // Create an "ExtDefList" node with line number from @1.first_line
        yyval->int_number = 2; // Set the node's integer value to 2
        yyvsp[-1]->brother = yyvsp[0]; // Link the first child node with the second child node
    }
#line 1402 "./syntax.tab.c"
    break;

  case 5: /* ExtDef: Specifier ExtDecList SEMI  */
#line 104 "./syntax.y"
                              {
        yyval = create_Node(yyvsp[-2], "ExtDef\0", (yylsp[-2]).first_line); // Create an "ExtDef" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link Specifier and ExtDecList nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link ExtDecList and SEMI node
    }
#line 1412 "./syntax.tab.c"
    break;

  case 6: /* ExtDef: Specifier SEMI  */
#line 109 "./syntax.y"
                   {
        yyval = create_Node(yyvsp[-1], "ExtDef\0", (yylsp[-1]).first_line); // Create an "ExtDef" node with line number from @1.first_line
        yyvsp[-1]->brother = yyvsp[0]; // Link Specifier and SEMI node
    }
#line 1421 "./syntax.tab.c"
    break;

  case 7: /* ExtDef: Specifier FunDec CompSt  */
#line 113 "./syntax.y"
                            {
        yyval = create_Node(yyvsp[-2], "ExtDef\0", (yylsp[-2]).first_line); // Create an "ExtDef" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link Specifier and FunDec nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link FunDec and CompSt nodes
    }
#line 1431 "./syntax.tab.c"
    break;

  case 8: /* ExtDef: Specifier error  */
#line 118 "./syntax.y"
                    {
        Err = 1; // Set error flag to 1
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', "Missing \";\""); // Print error message
    }
#line 1441 "./syntax.tab.c"
    break;

  case 9: /* ExtDecList: VarDec  */
#line 126 "./syntax.y"
           {
        yyval = create_Node(yyvsp[0], "ExtDecList\0", (yylsp[0]).first_line); // Create an "ExtDecList" node with line number from @1.first_line
    }
#line 1449 "./syntax.tab.c"
    break;

  case 10: /* ExtDecList: VarDec COMMA ExtDecList  */
#line 129 "./syntax.y"
                            {
        yyval = create_Node(yyvsp[-2], "ExtDecList\0", (yylsp[-2]).first_line); // Create an "ExtDecList" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link VarDec and COMMA node
        yyvsp[-1]->brother = yyvsp[0]; // Link COMMA and ExtDecList node
    }
#line 1459 "./syntax.tab.c"
    break;

  case 11: /* ExtDecList: VarDec error ExtDecList  */
#line 134 "./syntax.y"
                            {
        Err = 1; // Set error flag to 1
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', "text"); // Print error message
    }
#line 1469 "./syntax.tab.c"
    break;

  case 12: /* Specifier: TYPE  */
#line 142 "./syntax.y"
         {
        yyval = create_Node(yyvsp[0], "Specifier\0", (yylsp[0]).first_line); // Create a "Specifier" node with line number from @1.first_line
    }
#line 1477 "./syntax.tab.c"
    break;

  case 13: /* Specifier: StructSpecifier  */
#line 145 "./syntax.y"
                    {
        yyval = create_Node(yyvsp[0], "Specifier\0", (yylsp[0]).first_line); // Create a "Specifier" node with line number from @1.first_line
    }
#line 1485 "./syntax.tab.c"
    break;

  case 14: /* StructSpecifier: STRUCT OptTag LC DefList RC  */
#line 151 "./syntax.y"
                                {
        yyval = create_Node(yyvsp[-4], "StructSpecifier\0", (yylsp[-4]).first_line); // Create a "StructSpecifier" node with line number from @1.first_line
        yyvsp[-4]->brother = yyvsp[-3]; // Link STRUCT and OptTag nodes
        yyvsp[-3]->brother = yyvsp[-2]; // Link OptTag and LC nodes
        yyvsp[-2]->brother = yyvsp[-1]; // Link LC and DefList nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link DefList and RC nodes
    }
#line 1497 "./syntax.tab.c"
    break;

  case 15: /* StructSpecifier: STRUCT Tag  */
#line 158 "./syntax.y"
               {
        yyval = create_Node(yyvsp[-1], "StructSpecifier\0", (yylsp[-1]).first_line); // Create a "StructSpecifier" node with line number from @1.first_line
        yyvsp[-1]->brother = yyvsp[0]; // Link STRUCT and Tag nodes
    }
#line 1506 "./syntax.tab.c"
    break;

  case 16: /* OptTag: %empty  */
#line 165 "./syntax.y"
    {
        yyval = create_Node(NULL, "OptTag\0", 0); // Create an "OptTag" node with line number 0
        yyval->int_number = 0; // Set the node's integer value to 0
    }
#line 1515 "./syntax.tab.c"
    break;

  case 17: /* OptTag: ID  */
#line 169 "./syntax.y"
       {
        yyval = create_Node(yyvsp[0], "OptTag\0", (yylsp[0]).first_line); // Create an "OptTag" node with line number from @1.first_line
    }
#line 1523 "./syntax.tab.c"
    break;

  case 18: /* Tag: ID  */
#line 175 "./syntax.y"
       {
        yyval = create_Node(yyvsp[0], "Tag\0", (yylsp[0]).first_line); // Create a "Tag" node with line number from @1.first_line
    }
#line 1531 "./syntax.tab.c"
    break;

  case 19: /* VarDec: ID  */
#line 181 "./syntax.y"
       {
        yyval = create_Node(yyvsp[0], "VarDec\0", (yylsp[0]).first_line); // Create a "VarDec" node with line number from @1.first_line
    }
#line 1539 "./syntax.tab.c"
    break;

  case 20: /* VarDec: VarDec LB INT RB  */
#line 184 "./syntax.y"
                     {
        yyval = create_Node(yyvsp[-3], "VarDec\0", (yylsp[-3]).first_line); // Create a "VarDec" node with line number from @1.first_line
        yyvsp[-3]->brother = yyvsp[-2]; // Link VarDec and LB nodes
        yyvsp[-2]->brother = yyvsp[-1]; // Link LB and INT nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link INT and RB nodes
    }
#line 1550 "./syntax.tab.c"
    break;

  case 21: /* VarDec: VarDec LB error RB  */
#line 190 "./syntax.y"
                       {
        Err = 1; // Set error flag to 1
        char msg[32]; // Define buffer for error message
        sprintf(msg, "Syntax error, near '%c'", yytext[0]); // Format error message
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', msg); // Print error message
    }
#line 1562 "./syntax.tab.c"
    break;

  case 22: /* FunDec: ID LP VarList RP  */
#line 200 "./syntax.y"
                     {
        yyval = create_Node(yyvsp[-3], "FunDec\0", (yylsp[-3]).first_line); // Create a "FunDec" node with line number from @1.first_line
        yyvsp[-3]->brother = yyvsp[-2]; // Link ID and LP nodes
        yyvsp[-2]->brother = yyvsp[-1]; // Link LP and VarList nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link VarList and RP nodes
    }
#line 1573 "./syntax.tab.c"
    break;

  case 23: /* FunDec: ID LP RP  */
#line 206 "./syntax.y"
             {
        yyval = create_Node(yyvsp[-2], "FunDec\0", (yylsp[-2]).first_line); // Create a "FunDec" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link ID and LP nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link LP and RP nodes
    }
#line 1583 "./syntax.tab.c"
    break;

  case 24: /* FunDec: ID LP error RP  */
#line 211 "./syntax.y"
                   {
        Err = 1; // Set error flag to 1
        if (lastErrLineno != yylineno)  // If the last error line is not the current line
            printError('B', "Syntax error between ()"); // Print error message
    }
#line 1593 "./syntax.tab.c"
    break;

  case 25: /* VarList: ParamDec COMMA VarList  */
#line 219 "./syntax.y"
                           {
        yyval = create_Node(yyvsp[-2], "VarList\0", (yylsp[-2]).first_line); // Create a "VarList" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link ParamDec and COMMA nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link COMMA and VarList nodes
    }
#line 1603 "./syntax.tab.c"
    break;

  case 26: /* VarList: ParamDec  */
#line 224 "./syntax.y"
             {
        yyval = create_Node(yyvsp[0], "VarList\0", (yylsp[0]).first_line); // Create a "VarList" node with line number from @1.first_line
    }
#line 1611 "./syntax.tab.c"
    break;

  case 27: /* ParamDec: Specifier VarDec  */
#line 230 "./syntax.y"
                     {
        yyval = create_Node(yyvsp[-1], "ParamDec\0", (yylsp[-1]).first_line); // Create a "ParamDec" node with line number from @1.first_line
        yyvsp[-1]->brother = yyvsp[0]; // Link Specifier and VarDec nodes
    }
#line 1620 "./syntax.tab.c"
    break;

  case 28: /* CompSt: LC DefList StmtList RC  */
#line 237 "./syntax.y"
                           {
        yyval = create_Node(yyvsp[-3], "CompSt\0", (yylsp[-3]).first_line); // Create a "CompSt" node with line number from @1.first_line
        yyvsp[-3]->brother = yyvsp[-2]; // Link LC and DefList nodes
        yyvsp[-2]->brother = yyvsp[-1]; // Link DefList and StmtList nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link StmtList and RC nodes
    }
#line 1631 "./syntax.tab.c"
    break;

  case 29: /* StmtList: %empty  */
#line 246 "./syntax.y"
    {
        yyval = create_Node(NULL, "StmtList\0", 0); // Create a "StmtList" node with line number 0
        yyval->int_number = 0; // Set the node's integer value to 0
    }
#line 1640 "./syntax.tab.c"
    break;

  case 30: /* StmtList: Stmt StmtList  */
#line 250 "./syntax.y"
                  {
        yyval = create_Node(yyvsp[-1], "StmtList\0", (yylsp[-1]).first_line); // Create a "StmtList" node with line number from @1.first_line
        yyvsp[-1]->brother = yyvsp[0]; // Link Stmt and StmtList nodes
    }
#line 1649 "./syntax.tab.c"
    break;

  case 31: /* Stmt: Exp SEMI  */
#line 257 "./syntax.y"
             {
        yyval = create_Node(yyvsp[-1], "Stmt\0", (yylsp[-1]).first_line); // Create a "Stmt" node with line number from @1.first_line
        yyvsp[-1]->brother = yyvsp[0]; // Link Exp and SEMI nodes
    }
#line 1658 "./syntax.tab.c"
    break;

  case 32: /* Stmt: CompSt  */
#line 261 "./syntax.y"
           {
        yyval = create_Node(yyvsp[0], "Stmt\0", (yylsp[0]).first_line); // Create a "Stmt" node with line number from @1.first_line
    }
#line 1666 "./syntax.tab.c"
    break;

  case 33: /* Stmt: RETURN Exp SEMI  */
#line 264 "./syntax.y"
                    {
        yyval = create_Node(yyvsp[-2], "Stmt\0", (yylsp[-2]).first_line); // Create a "Stmt" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link RETURN and Exp nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link Exp and SEMI nodes
    }
#line 1676 "./syntax.tab.c"
    break;

  case 34: /* Stmt: IF LP Exp RP Stmt  */
#line 269 "./syntax.y"
                                            {
        yyval = create_Node(yyvsp[-4], "Stmt\0", (yylsp[-4]).first_line); // Create a "Stmt" node with line number from @1.first_line
        yyvsp[-4]->brother = yyvsp[-3]; // Link IF and LP nodes
        yyvsp[-3]->brother = yyvsp[-2]; // Link LP and Exp nodes
        yyvsp[-2]->brother = yyvsp[-1]; // Link Exp and RP nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link RP and Stmt nodes
    }
#line 1688 "./syntax.tab.c"
    break;

  case 35: /* Stmt: IF LP Exp RP Stmt ELSE Stmt  */
#line 276 "./syntax.y"
                                {
        yyval = create_Node(yyvsp[-6], "Stmt\0", (yylsp[-6]).first_line); // Create a "Stmt" node with line number from @1.first_line
        yyvsp[-6]->brother = yyvsp[-5]; // Link IF and LP nodes
        yyvsp[-5]->brother = yyvsp[-4]; // Link LP and Exp nodes
        yyvsp[-4]->brother = yyvsp[-3]; // Link Exp and RP nodes
        yyvsp[-3]->brother = yyvsp[-2]; // Link RP and Stmt nodes
        yyvsp[-2]->brother = yyvsp[-1]; // Link Stmt and ELSE nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link ELSE and Stmt nodes
    }
#line 1702 "./syntax.tab.c"
    break;

  case 36: /* Stmt: WHILE LP Exp RP Stmt  */
#line 285 "./syntax.y"
                         {
        yyval = create_Node(yyvsp[-4], "Stmt\0", (yylsp[-4]).first_line); // Create a "Stmt" node with line number from @1.first_line
        yyvsp[-4]->brother = yyvsp[-3]; // Link WHILE and LP nodes
        yyvsp[-3]->brother = yyvsp[-2]; // Link LP and Exp nodes
        yyvsp[-2]->brother = yyvsp[-1]; // Link Exp and RP nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link RP and Stmt nodes
    }
#line 1714 "./syntax.tab.c"
    break;

  case 37: /* Stmt: Exp error  */
#line 292 "./syntax.y"
              {
        Err = 1; // Set error flag to 1
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', "Missing \";\""); // Print error message
    }
#line 1724 "./syntax.tab.c"
    break;

  case 38: /* DefList: %empty  */
#line 300 "./syntax.y"
    {
        yyval = create_Node(NULL, "DefList\0", 0); // Create a "DefList" node with line number 0
        yyval->int_number = 0; // Set the node's integer value to 0
    }
#line 1733 "./syntax.tab.c"
    break;

  case 39: /* DefList: Def DefList  */
#line 304 "./syntax.y"
                {
        yyval = create_Node(yyvsp[-1], "DefList\0", (yylsp[-1]).first_line); // Create a "DefList" node with line number from @1.first_line
        yyvsp[-1]->brother = yyvsp[0]; // Link Def and DefList nodes
    }
#line 1742 "./syntax.tab.c"
    break;

  case 40: /* Def: Specifier DecList SEMI  */
#line 311 "./syntax.y"
                           {
        yyval = create_Node(yyvsp[-2], "Def\0", (yylsp[-2]).first_line); // Create a "Def" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link Specifier and DecList nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link DecList and SEMI nodes
    }
#line 1752 "./syntax.tab.c"
    break;

  case 41: /* Def: Specifier error SEMI  */
#line 316 "./syntax.y"
                         {
        Err = 1; // Set error flag to 1
        char msg[32]; // Define buffer for error message
        sprintf(msg, "Syntax error, near '%c'", yytext[0]); // Format error message
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', msg); // Print error message
    }
#line 1764 "./syntax.tab.c"
    break;

  case 42: /* Def: Specifier DecList error  */
#line 323 "./syntax.y"
                            {
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', "Missing \";\""); // Print error message
    }
#line 1773 "./syntax.tab.c"
    break;

  case 43: /* DecList: Dec  */
#line 330 "./syntax.y"
        {
        yyval = create_Node(yyvsp[0], "DecList\0", (yylsp[0]).first_line); // Create a "DecList" node with line number from @1.first_line
    }
#line 1781 "./syntax.tab.c"
    break;

  case 44: /* DecList: Dec COMMA DecList  */
#line 333 "./syntax.y"
                      {
        yyval = create_Node(yyvsp[-2], "DecList\0", (yylsp[-2]).first_line); // Create a "DecList" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link Dec and COMMA nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link COMMA and DecList nodes
    }
#line 1791 "./syntax.tab.c"
    break;

  case 45: /* Dec: VarDec  */
#line 341 "./syntax.y"
           {
        yyval = create_Node(yyvsp[0], "Dec\0", (yylsp[0]).first_line); // Create a "Dec" node with line number from @1.first_line
    }
#line 1799 "./syntax.tab.c"
    break;

  case 46: /* Dec: VarDec ASSIGNOP Exp  */
#line 344 "./syntax.y"
                        {
        yyval = create_Node(yyvsp[-2], "Dec\0", (yylsp[-2]).first_line); // Create a "Dec" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link VarDec and ASSIGNOP nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link ASSIGNOP and Exp nodes
    }
#line 1809 "./syntax.tab.c"
    break;

  case 47: /* Exp: Exp ASSIGNOP Exp  */
#line 352 "./syntax.y"
                     {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line); // Create an "Exp" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link first Exp and ASSIGNOP nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link ASSIGNOP and second Exp nodes
    }
#line 1819 "./syntax.tab.c"
    break;

  case 48: /* Exp: Exp AND Exp  */
#line 357 "./syntax.y"
                {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line);
        yyvsp[-2]->brother = yyvsp[-1]; // Link first Exp and AND nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link AND and second Exp nodes
    }
#line 1829 "./syntax.tab.c"
    break;

  case 49: /* Exp: Exp OR Exp  */
#line 362 "./syntax.y"
               {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line);
        yyvsp[-2]->brother = yyvsp[-1]; // Link first Exp and OR nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link OR and second Exp nodes
    }
#line 1839 "./syntax.tab.c"
    break;

  case 50: /* Exp: Exp RELOP Exp  */
#line 367 "./syntax.y"
                  {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line);
        yyvsp[-2]->brother = yyvsp[-1]; // Link first Exp and RELOP nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link RELOP and second Exp nodes
    }
#line 1849 "./syntax.tab.c"
    break;

  case 51: /* Exp: Exp PLUS Exp  */
#line 372 "./syntax.y"
                 {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line);
        yyvsp[-2]->brother = yyvsp[-1]; // Link first Exp and PLUS nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link PLUS and second Exp nodes
    }
#line 1859 "./syntax.tab.c"
    break;

  case 52: /* Exp: Exp MINUS Exp  */
#line 377 "./syntax.y"
                  {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line);
        yyvsp[-2]->brother = yyvsp[-1]; // Link first Exp and MINUS nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link MINUS and second Exp nodes
    }
#line 1869 "./syntax.tab.c"
    break;

  case 53: /* Exp: Exp STAR Exp  */
#line 382 "./syntax.y"
                 {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line);
        yyvsp[-2]->brother = yyvsp[-1]; // Link first Exp and STAR nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link STAR and second Exp nodes
    }
#line 1879 "./syntax.tab.c"
    break;

  case 54: /* Exp: Exp DIV Exp  */
#line 387 "./syntax.y"
                {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line);
        yyvsp[-2]->brother = yyvsp[-1]; // Link first Exp and DIV nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link DIV and second Exp nodes
    }
#line 1889 "./syntax.tab.c"
    break;

  case 55: /* Exp: LP Exp RP  */
#line 392 "./syntax.y"
              {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line);
        yyvsp[-2]->brother = yyvsp[-1]; // Link LP and Exp nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link Exp and RP nodes
    }
#line 1899 "./syntax.tab.c"
    break;

  case 56: /* Exp: MINUS Exp  */
#line 397 "./syntax.y"
                                   {
        yyval = create_Node(yyvsp[-1], "Exp\0", (yylsp[-1]).first_line);
        yyvsp[-1]->brother = yyvsp[0]; // Link MINUS and Exp nodes
    }
#line 1908 "./syntax.tab.c"
    break;

  case 57: /* Exp: NOT Exp  */
#line 401 "./syntax.y"
            {
        yyval = create_Node(yyvsp[-1], "Exp\0", (yylsp[-1]).first_line);
        yyvsp[-1]->brother = yyvsp[0]; // Link NOT and Exp nodes
    }
#line 1917 "./syntax.tab.c"
    break;

  case 58: /* Exp: ID LP Args RP  */
#line 405 "./syntax.y"
                  {
        yyval = create_Node(yyvsp[-3], "Exp\0", (yylsp[-3]).first_line);
        yyvsp[-3]->brother = yyvsp[-2]; // Link ID and LP nodes
        yyvsp[-2]->brother = yyvsp[-1]; // Link LP and Args nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link Args and RP nodes
    }
#line 1928 "./syntax.tab.c"
    break;

  case 59: /* Exp: ID LP RP  */
#line 411 "./syntax.y"
             {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line);
        yyvsp[-2]->brother = yyvsp[-1]; // Link ID and LP nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link LP and RP nodes
    }
#line 1938 "./syntax.tab.c"
    break;

  case 60: /* Exp: Exp LB Exp RB  */
#line 416 "./syntax.y"
                  {
        yyval = create_Node(yyvsp[-3], "Exp\0", (yylsp[-3]).first_line);
        yyvsp[-3]->brother = yyvsp[-2]; // Link first Exp and LB nodes
        yyvsp[-2]->brother = yyvsp[-1]; // Link LB and second Exp nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link second Exp and RB nodes
    }
#line 1949 "./syntax.tab.c"
    break;

  case 61: /* Exp: Exp DOT ID  */
#line 422 "./syntax.y"
               {
        yyval = create_Node(yyvsp[-2], "Exp\0", (yylsp[-2]).first_line);
        yyvsp[-2]->brother = yyvsp[-1]; // Link Exp and DOT nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link DOT and ID nodes
    }
#line 1959 "./syntax.tab.c"
    break;

  case 62: /* Exp: ID  */
#line 427 "./syntax.y"
       {
        yyval = create_Node(yyvsp[0], "Exp\0", (yylsp[0]).first_line);
    }
#line 1967 "./syntax.tab.c"
    break;

  case 63: /* Exp: INT  */
#line 430 "./syntax.y"
        {
        yyval = create_Node(yyvsp[0], "Exp\0", (yylsp[0]).first_line);
    }
#line 1975 "./syntax.tab.c"
    break;

  case 64: /* Exp: FLOAT  */
#line 433 "./syntax.y"
          {
        yyval = create_Node(yyvsp[0], "Exp\0", (yylsp[0]).first_line);
    }
#line 1983 "./syntax.tab.c"
    break;

  case 65: /* Exp: Exp LB error RB  */
#line 436 "./syntax.y"
                    {
        Err = 1; // Set error flag to 1
        if (lastErrLineno != yylineno) // If the last error line is not the current line
            printError('B', "Syntax error between \"[]\""); // Print error message
    }
#line 1993 "./syntax.tab.c"
    break;

  case 66: /* Exp: Exp ASSIGNOP error  */
#line 441 "./syntax.y"
                       {
        Err = 1;
        if (lastErrLineno != yylineno)
            printError('B', "Syntax error in Exp"); // Print error message
    }
#line 2003 "./syntax.tab.c"
    break;

  case 67: /* Exp: LP error RP  */
#line 446 "./syntax.y"
                {
        Err = 1;
        if (lastErrLineno != yylineno)
            printError('B', "Syntax error in Exp"); // Print error message
    }
#line 2013 "./syntax.tab.c"
    break;

  case 68: /* Exp: ID LP error RP  */
#line 451 "./syntax.y"
                   {
        Err = 1;
        if (lastErrLineno != yylineno)
            printError('B', "Syntax error in Exp"); // Print error message
    }
#line 2023 "./syntax.tab.c"
    break;

  case 69: /* Exp: Exp LB Exp error RB  */
#line 456 "./syntax.y"
                        {
        Err = 1;
        if (lastErrLineno != yylineno)
            printError('B', "Missing \"]\""); // Print error message
    }
#line 2033 "./syntax.tab.c"
    break;

  case 70: /* Args: Exp COMMA Args  */
#line 464 "./syntax.y"
                   {
        yyval = create_Node(yyvsp[-2], "Arg\0", (yylsp[-2]).first_line); // Create an "Arg" node with line number from @1.first_line
        yyvsp[-2]->brother = yyvsp[-1]; // Link Exp and COMMA nodes
        yyvsp[-1]->brother = yyvsp[0]; // Link COMMA and Args nodes
    }
#line 2043 "./syntax.tab.c"
    break;

  case 71: /* Args: Exp  */
#line 469 "./syntax.y"
        {
        yyval = create_Node(yyvsp[0], "Args\0", (yylsp[0]).first_line); // Create an "Args" node with line number from @1.first_line
    }
#line 2051 "./syntax.tab.c"
    break;


#line 2055 "./syntax.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;
  *++yylsp = yyloc;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  yyerror_range[1] = yylloc;
  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval, &yylloc);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;

      yyerror_range[1] = *yylsp;
      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp, yylsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  yyerror_range[2] = yylloc;
  ++yylsp;
  YYLLOC_DEFAULT (*yylsp, yyerror_range, 2);

  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval, &yylloc);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp, yylsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 474 "./syntax.y"


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
