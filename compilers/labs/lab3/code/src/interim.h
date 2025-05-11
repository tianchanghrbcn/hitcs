#ifndef INTERIM_H
#define INTERIM_H
/**
 * @file interim.h
 * @brief 语义分析阶段之后的中间代码(IR)构造与打印接口
 *
 * 本头文件声明了生成三地址码(IR)所需的数据结构与翻译函数。
 * 所有注释均为中文，便于快速了解各接口用途。
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "semantic.h"

/*========================
  Operand & InterCode 定义
  ========================*/

/*  操作数(Operand)的抽象类型 */
typedef struct Operand_* Operand;

/*  中间代码(InterCode)链表结点 */
typedef struct InterCode_* InterCode;

/**
 * @struct Operand_
 * @brief 表示三地址码中的“地址”或“立即数”等操作数
 *
 * kind: 区分操作数的具体类别：
 *   - FROM_ARG : 函数实参
 *   - VARIABLE : 源代码中的变量
 *   - TEMP     : 编译期间生成的临时变量 t1, t2 ...
 *   - CONSTANT : 立即数 #5
 *   - ADDRESS  : 取地址 &x
 *   - WADDRESS : 数组/结构体写地址 *x = ...
 *   - FUNCTION : 函数名
 *   - LABEL    : 跳转目标
 *   - RELOP    : 关系运算符 <, <=, ...
 *
 * u_int / u_char 用联合方式保存索引或名字指针
 * type           保存本操作数对应的 Type*，便于取得大小等信息
 */
struct Operand_{
    enum{
        FROM_ARG, VARIABLE, TEMP, CONSTANT,
        ADDRESS, WADDRESS, FUNCTION, LABEL, RELOP
    } kind;
    int   u_int;   /* 用整数保存临时编号或偏移量 */
    char* u_char;  /* 指向标识符字符串的指针 */
    Type  type;    /* 该操作数的类型信息 */
};

/**
 * @struct InterCode_
 * @brief 单条三地址码指令
 *
 * kind 指示指令类型(见下方枚举)。
 * 指令用双向链表连接, 方便前后插入/删除与遍历。
 *
 * u 是不同指令形式需要的操作数集合, 详见注释。
 */
struct InterCode_{
    enum{
        /* 单操作数语句 */
        ILABEL,     /* LABEL x :   */
        IFUNCTION,  /* FUNCTION f :*/
        GOTO,
        RETURN,
        ARG,
        PARAM,
        READ,
        WRITE,

        /* 双操作数语句 */
        ASSIGN,     /* x := y            */
        CALL,       /* x := CALL f / CALL f */

        /* 地址相关 */
        ADDRASS1,   /* x := &y   */
        ADDRASS2,   /* x := *y   */
        ADDRASS3,   /* *x := y   */

        /* 三目算术 */
        ADD, SUB, MUL, DIV,

        /* 条件跳转 */
        IF,

        /* 内存申请 */
        DEC
    } kind;

    union{
        /* 单操作数: LABEL / FUNCTION / GOTO / RETURN / ARG / PARAM / READ / WRITE */
        struct{ Operand op; } ulabel;

        /* 双操作数: ASSIGN / CALL / 地址相关 */
        struct{ Operand op1, op2; } uassign;

        /* 三目运算: ADD / SUB / MUL / DIV */
        struct{ Operand result, op1, op2; } ubinop;

        /* 条件跳转: IF x relop y GOTO z */
        struct{ Operand x, relop, y, z; } uif;

        /* DEC x [size] */
        struct{ Operand op; int size; } udec;
    } u;

    InterCode before;  /* 前驱指令 */
    InterCode next;    /* 后继指令 */
};

/*========================
  工具函数：调试与输出
  ========================*/

/**
 * @brief 在控制台打印单条中间代码(调试用)
 */
void translate_print_test(InterCode temp);

/**
 * @brief 将整张 IR 链表输出到已打开的文件流 f
 */
void translate_print(FILE* f);

/**
 * @brief 将新指令 it 插入到 IR 链表尾部
 */
void insert_intercode(InterCode it);

/*========================
  临时变量 & 标签生成器
  ========================*/

/**
 * @brief 生成新的临时变量 tN
 * @return Operand 类型, kind == TEMP
 */
Operand new_temp();

/**
 * @brief 生成新的标签 labelN
 * @return Operand 类型, kind == LABEL
 */
Operand new_label();

/*========================
  辅助计算
  ========================*/

/**
 * @brief 获取某类型所占字节数(对齐到 4 字节)
 */
int get_size(Type type);

/**
 * @brief 递归计算结构体字段偏移量
 * @param return_type  最终字段类型(用于 DEC 及地址偏移)
 * @param after        抽象语法树节点, 指向需要计算的字段
 */
int get_offset(Type return_type, struct Node* after);

/*========================
  具体翻译函数(由 parser 调用)
  ========================*/

/**
 * @brief 以整棵 AST(root) 为入口, 生成中间代码并写入文件 F
 */
void translate_Program(struct Node* now, FILE* F);

/* 以下函数均在语法分析归约时被调用, 按产生式逐步翻译 */

/* 处理外部定义(函数/全局变量) */
void translate_ExtDef(struct Node* now);

/* 处理函数声明部分, 生成 FUNCTION, PARAM 等 */
void translate_FunDec(struct Node* now);

/* 处理函数复合语句 { ... } */
void translate_CompSt(struct Node* now);

/* 处理局部变量声明列表 */
void translate_DefList(struct Node* now);

/* 处理语句列表 */
void translate_StmtList(struct Node* now);

/* 处理单个局部变量声明 */
void translate_Def(struct Node* now);

/* 处理单条语句 */
void translate_Stmt(struct Node* now);

/* 处理变量定义串 a, b=1, c[10] ... */
void translate_DecList(struct Node* now);

/* 翻译表达式, place 为结果保存目标(可为空) */
void translate_Exp(struct Node* now,Operand place);

/* 翻译布尔条件表达式, lt/lf 分别为真/假跳转目标 */
void translate_Cond(struct Node* now,Operand lt,Operand lf);

/* 处理单个变量声明(含数组/结构体) */
void translate_Dec(struct Node* now);

/* 处理变量声明(递归展开多维数组) */
void translate_VarDec(struct Node* now,Operand place);

/* 处理函数实参列表, here 指向 INSERT ARG 的位置 */
void translate_Args(struct Node* now,InterCode here);

/* 辅助: 处理类型说明符 */
void translate_Specifier(struct Node* now);

/* 辅助: 处理结构体说明符 */
void translate_StructSpecifier(struct Node* now);

#endif /* INTERIM_H */
