/******************************************************************************
 * semantic.h
 * 描述  : 定义编译器语义分析所需的数据结构和函数, 包括符号表、类型系统、以及
 *         针对抽象语法树进行语义检查的主要接口(如遍历树、处理表达式/语句等)。
 ******************************************************************************/

#ifndef _SEMANTIC_H_
#define _SEMANTIC_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "node.h"  // 引入抽象语法树节点定义

/******************************************************************************
 * 常量与宏
 ******************************************************************************/
#define HASH_SIZE 65536 // 哈希表大小, 用于符号表的散列
#define INT_TYPE   1    // 标识int类型
#define FLOAT_TYPE 2    // 标识float类型

/******************************************************************************
 * 枚举: Kind
 * 描述 : 用于标识类型的种类
 * 成员 :
 *   - BASIC     : 基本类型(int, float)
 *   - ARRAY     : 数组类型
 *   - STRUCTURE : 结构体类型
 *   - FUNCTION  : 函数类型
 ******************************************************************************/
typedef enum Kind_ {
    BASIC,
    ARRAY,
    STRUCTURE,
    FUNCTION
} Kind;

/******************************************************************************
 * 结构与类型命名
 *   - TypePtr   : 指向类型结构 Type_ 的指针
 *   - FieldList : 指向字段列表结构 FieldList_ 的指针
 ******************************************************************************/
typedef struct Type_*      TypePtr;
typedef struct FieldList_* FieldList;

/******************************************************************************
 * 结构名 : Type_
 * 描  述: 用于表示变量的类型, 包括基本类型、数组类型、结构体类型、函数类型等
 * 成  员:
 *   - kind: 类型的种类(Kind枚举值)
 *   - u   : 根据不同 kind, 存储不同的具体信息
 ******************************************************************************/
typedef struct Type_ {
    Kind kind; // 类型种类
    union {
        /**** (1) 基本类型 ****/
        int basic_; // 若 kind == BASIC, 则 basic_ 存储 INT_TYPE 或 FLOAT_TYPE

        /**** (2) 数组类型 ****/
        struct {
            int size;    // 数组大小
            TypePtr elem; // 数组元素的类型
        } array_;

        /**** (3) 结构体类型 ****/
        FieldList structure_; // 指向结构体字段列表的指针

        /**** (4) 函数类型 ****/
        struct {
            FieldList params; // 函数参数列表(链表)
            TypePtr   funcType; // 函数返回值类型
            int       paramNum; // 函数参数个数
        } function_;

    } u; // 联合体
} Type_;

/******************************************************************************
 * 结构名 : FieldList_
 * 描  述: 字段列表, 可表示:
 *   - 结构体的一个成员
 *   - 函数参数列表中的一个形参
 * 成  员:
 *   - name     : 字段名称
 *   - type     : 字段类型指针
 *   - tail     : 指向下一个字段
 *   - collision: 用于哈希表中检测碰撞次数(或者用于其他扩展信息)
 ******************************************************************************/
typedef struct FieldList_ {
    char*     name;     // 字段名称
    TypePtr   type;     // 字段类型
    FieldList tail;     // 指向下一个字段
    int       collision; // 碰撞次数(用于符号表碰撞处理等)
} FieldList_;

/******************************************************************************
 * 函数声明(主要的语义分析接口与符号表操作)
 ******************************************************************************/
/************* 语义分析: 遍历并处理抽象语法树 ************/
void traverseTree(Node* root);                  // 遍历抽象语法树, 并进行语义检查

FieldList VarDec(Node* root, TypePtr basictype); // 解析变量声明
TypePtr   Specifier(Node* root);                // 解析类型说明(基本类型或结构体)
void      ExtDefList(Node* root);               // 解析外部定义列表(全局变量/函数等)
void      CompSt(Node* root, TypePtr funcType); // 解析复合语句(函数体)
void      DefList(Node* root);                  // 解析定义列表(局部变量/结构体内部字段)
void      Stmt(Node* root, TypePtr funcType);   // 解析语句(if, while, return等)
TypePtr   Exp(Node* root);                      // 解析表达式(运算、函数调用、数组/结构体访问等)

/************* 符号表: 哈希与查找/插入 ************/
unsigned int hash_pjw(char* name);    // PJW哈希函数
void         initHashtable();         // 初始化哈希表
int          insertSymbol(FieldList f);          // 向哈希表插入符号
FieldList    lookupSymbol(char* name, int function); // 在哈希表中查找符号
void         AllSymbol();             // 打印所有已存符号(调试用)

/************* 类型比较工具 ************/
int          TypeEqual(TypePtr type1, TypePtr type2); // 判断两个类型是否等价

#endif // _SEMANTIC_H_
