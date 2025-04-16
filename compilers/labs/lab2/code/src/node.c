/******************************************************************************
 * 文件名: tree.c
 * 描述  : 本文件实现了抽象语法树节点的创建、添加子节点、打印以及遍历功能。
 *         同时在遍历过程中可以结合语义分析部分调用相关函数进行处理。
 ******************************************************************************/

#include <stdio.h>      // 标准输入输出库
#include <stdlib.h>     // 标准库, 提供 malloc/free 等函数
#include <stdarg.h>     // 可变参数库, 提供 va_list 等宏
#include <string.h>     // 字符串库, 提供 strcpy/strcmp 等函数

#include "node.h"       // 引入节点结构定义, 包含 Node 结构体及常量等
#include "semantic.h"   // 引入语义分析相关函数, 如 ExtDefList 等

/******************************************************************************
 * 函数名: createNode
 * 功  能: 创建并初始化一个抽象语法树节点
 * 参  数:
 *   - name: 节点的名称(如 "ID", "INT", "ExtDef" 等)
 *   - text: 节点文本内容(如 "main", "10", "float" 等)
 * 返回值: 新创建的节点指针
 * 说  明:
 *   - 节点行号来源于外部的 yylineno(通常由词法分析器提供当前扫描行号)
 *   - 初始化 child[] 数组为空, childsum=0 代表没有子节点
 ******************************************************************************/
Node* createNode(char* name, char* text) {
    // 为新节点分配内存
    Node* pnode = (Node*)malloc(sizeof(Node));
    // 拷贝节点名称
    strcpy(pnode->name, name);
    // 拷贝节点文本(如标识符名称或字面量字符串)
    strcpy(pnode->text, text);

    // 记录该节点出现的行号, 通常来自词法分析器
    pnode->lineno = yylineno;

    // 初始化子节点指针为空
    for (int i = 0; i < MAX_CHILD_NUM; i++) {
        pnode->child[i] = NULL;
    }
    // 初始时无子节点
    pnode->childsum = 0;

    return pnode;
}

/******************************************************************************
 * 函数名: addChild
 * 功  能: 为父节点添加若干子节点
 * 参  数:
 *   - childsum: 要添加的子节点数量
 *   - parent  : 父节点指针
 *   - ...     : 变长参数, 依次传入子节点指针
 * 返回值: 无
 * 说  明:
 *   - 将子节点顺序添加到 parent->child[] 数组中
 *   - 将父节点行号更新为第一个子节点的行号
 ******************************************************************************/
void addChild(int childsum, Node* parent, ...) {
    va_list ap;
    va_start(ap, parent);

    // 依次获取子节点指针, 并填入父节点的 child[] 数组
    for (int i = 0; i < childsum; i++) {
        parent->child[i] = va_arg(ap, Node*);
    }

    // 取第一个子节点的行号作为父节点的行号
    if (parent->child[0] != NULL) {
        parent->lineno = parent->child[0]->lineno;
    }
    // 记录子节点数量
    parent->childsum = childsum;

    va_end(ap);
}

/******************************************************************************
 * 函数名: printTree
 * 功  能: 打印抽象语法树, 以缩进的方式显示层次关系
 * 参  数:
 *   - parent: 当前节点指针
 *   - blank : 当前节点要缩进的空格数(用于层次控制)
 * 返回值: 无
 * 说  明:
 *   - 若 childsum != 0, 表示该节点有子节点, 打印节点名称和行号后递归打印子节点
 *   - 若 childsum = 0, 则根据节点名称判断是否需要打印额外信息(整型值, 浮点值, 标识符等)
 ******************************************************************************/
void printTree(Node* parent, int blank) {
    if (parent == NULL) {
        return; // 空指针, 无需处理
    }

    // 打印缩进空格
    for (int i = 0; i < blank; i++) {
        printf(" ");
    }

    // 若当前节点存在子节点
    if (parent->childsum != 0) {
        // 打印节点名称和其出现行号
        printf("%s (%d)\n", parent->name, parent->lineno);
        // 递归打印所有子节点
        for (int i = 0; i < parent->childsum; i++) {
            printTree(parent->child[i], blank + 2);
        }
    }
    // 若没有子节点, 根据节点类型打印具体信息
    else {
        if (strcmp(parent->name, "INT") == 0) {
            // 将文本转换为整数并打印
            printf("%s: %d\n", parent->name, atoi(parent->text));
        }
        else if (strcmp(parent->name, "FLOAT") == 0) {
            // 将文本转换为浮点数并打印
            printf("%s: %f\n", parent->name, atof(parent->text));
        }
        else if (strcmp(parent->name, "ID") == 0
              || strcmp(parent->name, "TYPE") == 0) {
            // 打印标识符或类型名的文本
            printf("%s: %s\n", parent->name, parent->text);
        }
        else {
            // 其他类型节点仅打印名称
            printf("%s\n", parent->name);
        }
    }
}

/******************************************************************************
 * 函数名: traverseTree
 * 功  能: 对抽象语法树进行遍历(深度优先), 并可在遍历过程中进行语义分析
 * 参  数:
 *   - root: 当前节点指针
 * 返回值: 无
 * 说  明:
 *   - 若节点名称为 "ExtDefList", 调用语义分析函数 ExtDefList(root)
 *   - 否则递归遍历其所有子节点
 *   - 该函数可以看作在语法树基础上做进一步分析的入口, 包括语义检查等
 ******************************************************************************/
void traverseTree(Node* root) {
    if (root == NULL) {
        return;
    }

    // 如果是外部定义列表, 调用语义分析部分
    if (strcmp(root->name, "ExtDefList") == 0) {
        ExtDefList(root); // 对外部定义列表进行语义分析
        return;
    }

    // 否则继续遍历子节点
    if (root->childsum != 0) {
        for (int i = 0; i < root->childsum; i++) {
            traverseTree(root->child[i]);
        }
    }
}
