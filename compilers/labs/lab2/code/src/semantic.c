/******************************************************************************
 * 文件说明:
 *   本文件实现了编译器的部分语义分析功能, 主要包括:
 *   1) 符号表的哈希函数和初始化
 *   2) 符号的插入、查找和打印
 *   3) 类型相等(TypeEqual)判断
 *   4) 变量声明(VarDec)、类型声明(Specifier)以及外部/局部声明等处理
 *   5) 函数定义、函数体(CompSt)、语句(Stmt)和表达式(Exp)的语义检查
 *
 *   该代码假设与 node.h, semantic.h, 以及其他辅助文件(如定义TypePtr, FieldList等)配合使用。
 *   其中包含多种错误检查逻辑, 并在发现错误时打印相应的信息。
 ******************************************************************************/

#include "node.h"      // 包含抽象语法树节点的结构定义和常量
#include "semantic.h"  // 包含语义分析相关的结构、函数和常量

/******************************************************************************
 * 全局变量: 哈希表(符号表)相关
 *   - hashTable : 全局哈希表数组, 每个位置都存放一个 FieldList 指针
 *   - HASH_SIZE : 哈希表大小(在 .h 文件中定义), 通常为某个固定常量, 例如 0x3fff
 ******************************************************************************/
FieldList hashTable[HASH_SIZE];

/******************************************************************************
 * 函数名 : hash_pjw
 * 用  途 : 实现 PJW(Peter J. Weinberger) 哈希算法, 用于计算符号名对应的哈希值
 * 参  数 :
 *   - name : 符号名称(变量名或函数名的字符串)
 * 返回值 : 对应的哈希值(在 0 ~ HASH_SIZE-1 之间)
 * 说  明 :
 *   - 该函数将符号名的字符逐个累加, 并结合移位与异或等操作生成哈希值
 *   - 注意第 7 行的常量 0x3fff, 根据需要可自行调整
 ******************************************************************************/
unsigned int hash_pjw(char *name)
{
    unsigned int val = 0, i;
    for (; *name; ++name)
    {
        // 将当前字符纳入哈希计算
        val = (val << 2) + *name;
        // 若高位部分有溢出, 则进行异或以消除
        if ((i = val & ~0x3fff))
        {
            val = (val ^ (i >> 12)) & 0x3fff;
        }
    }
    // 将结果对哈希表大小取模, 得到 0 ~ HASH_SIZE-1 之间的索引
    return val % HASH_SIZE;
}

/******************************************************************************
 * 函数名 : initHashtable
 * 用  途 : 初始化全局哈希表, 将所有槽位设为 NULL
 * 返回值 : 无
 ******************************************************************************/
void initHashtable()
{
    for (int i = 0; i < HASH_SIZE; i++)
    {
        hashTable[i] = NULL;
    }
}

/******************************************************************************
 * 函数名 : insertSymbol
 * 用  途 : 向哈希表(符号表)中插入一个符号(变量/函数/结构体等)
 * 参  数 :
 *   - f : 需要插入的 FieldList 指针, 其中包含符号名和类型等信息
 * 返回值 :
 *   - 1 表示插入成功
 *   - 0 表示插入失败(输入为空或其他问题)
 * 说  明 :
 *   - 若类型为函数(kind == 3, 即 FUNCTION), 则在哈希计算时对 name 做特殊处理
 *   - 如果出现哈希冲突, 则采用开放地址法(linear probing)逐步向后寻找空槽
 ******************************************************************************/
int insertSymbol(FieldList f)
{
    if (f == NULL)      // 若传入的字段指针为空
        return 0;       // 插入失败
    if (f->name == NULL) // 若字段名为空
        return 0;

    f->collision = 0; // 初始化碰撞次数
    unsigned int key;

    // 若是函数, 则在哈希名上做特殊处理(1 + f->name)
    if (f->type->kind == 3)
        key = hash_pjw(1 + f->name);
    else
        key = hash_pjw(f->name);

    // 若对应槽位为空, 直接插入
    if (hashTable[key] == NULL)
    {
        hashTable[key] = f;
        return 1;
    }

    // 若出现碰撞, 采用线性探测: key++ (mod HASH_SIZE)
    while (1)
    {
        key = (++key) % HASH_SIZE;
        f->collision++;
        if (hashTable[key] == NULL)
        {
            hashTable[key] = f;
            return 1;
        }
    }
    // 理论上不会到这里
    return 0;
}
/******************************************************************************
 * 函数名 : lookupSymbol
 * 用  途 : 在哈希表中查找一个符号(变量或函数)
 * 参  数 :
 *   - name     : 符号名称
 *   - function : 标识是否为函数(1)或变量(0)
 * 返回值 :
 *   - 返回哈希表中对应的 FieldList 指针, 若查找失败则返回 NULL
 * 说  明 :
 *   - 若是函数, 使用 hash_pjw(1 + name) 计算哈希值
 *   - 若是变量, 则使用 hash_pjw(name)
 *   - 若哈希冲突, 采用线性探测继续查找
 *   - 仅当符号类型匹配(函数类型或非函数类型)时才返回匹配项
 ******************************************************************************/
FieldList lookupSymbol(char *name, int function)
{
    if (name == NULL)
        return NULL; // 名称为空, 直接返回 NULL

    unsigned int key;
    // 根据是否函数决定哈希名
    if (function)
        key = hash_pjw(1 + name);
    else
        key = hash_pjw(name);

    FieldList p = hashTable[key];
    // 线性探测遍历
    while (p != NULL)
    {
        // 若符号名相同
        if (strcmp(name, p->name) == 0)
        {
            // 如果期待函数且符号的类型是 FUNCTION
            if ((function == 1) && (p->type->kind == FUNCTION))
                return p;
            // 如果期待变量且符号的类型不是 FUNCTION
            if ((function == 0) && (p->type->kind != FUNCTION))
                return p;
        }
        // 向后探测下一个槽位
        key = (++key) % HASH_SIZE;
        p = hashTable[key];
    }
    return NULL;
}

/******************************************************************************
 * 函数名 : AllSymbol
 * 用  途 : 遍历并打印哈希表中所有已存放的符号信息
 * 返回值 : 无
 * 说  明 :
 *   - 仅简单打印 name 和 type->kind
 *   - 可根据需求进行更多信息的打印
 ******************************************************************************/
void AllSymbol()
{
    for (int i = 0; i < HASH_SIZE; i++)
    {
        if (hashTable[i] != NULL)
        {
            printf("name: %s, kind: %d\n",
                   hashTable[i]->name,
                   hashTable[i]->type->kind);
        }
    }
}

/******************************************************************************
 * 函数名 : TypeEqual
 * 用  途 : 判断两个类型 TypePtr 是否相等
 * 参  数 :
 *   - type1, type2 : 两个待比较的 TypePtr 类型指针
 * 返回值 :
 *   - 1 表示类型相同
 *   - 0 表示类型不同
 * 说  明 :
 *   - 区分多种类型: BASIC, ARRAY, STRUCTURE, FUNCTION
 *   - 对应类型需递归比较其子类型(如数组元素或结构体字段)
 ******************************************************************************/
int TypeEqual(TypePtr type1, TypePtr type2)
{
    // 若有任意一个为空, 则类型不相等
    if ((type1 == NULL) || (type2 == NULL))
        return 0;

    // 若种类(kind)不同, 直接不相等
    if (type1->kind != type2->kind)
        return 0;

    // 根据不同 kind 分别比较
    switch (type1->kind)
    {
    case BASIC:
        // 基本类型(int/float)
        if (type1->u.basic_ == type2->u.basic_)
            return 1;
        else
            return 0;

    case ARRAY:
        // 数组类型, 递归比较元素类型
        if (TypeEqual(type1->u.array_.elem, type2->u.array_.elem) == 1)
            return 1;
        else
            return 0;

    case STRUCTURE:
        // 结构体类型, 需对其字段列表一一比较
        {
            FieldList field1 = type1->u.structure_;
            FieldList field2 = type2->u.structure_;
            // 循环比较每个字段
            while ((field1 != NULL) && (field2 != NULL))
            {
                if (TypeEqual(field1->type, field2->type) == 0)
                    return 0;
                field1 = field1->tail;
                field2 = field2->tail;
            }
            // 若同时为空, 表示字段数一致且都匹配, 否则不等
            if ((field1 == NULL) && (field2 == NULL))
                return 1;
            return 0;
        }

    case FUNCTION:
        // 函数类型, 需检查返回类型、参数个数以及参数类型列表
        {
            // 先比较参数个数
            if (type1->u.function_.paramNum != type2->u.function_.paramNum)
                return 0;
            FieldList param1 = type1->u.function_.params;
            FieldList param2 = type2->u.function_.params;
            // 逐个参数比较类型
            for (int i = 0; i < type1->u.function_.paramNum; i++)
            {
                if (TypeEqual(param1->type, param2->type) == 0)
                    return 0;
                param1 = param1->tail;
                param2 = param2->tail;
            }
            return 1;
        }

    default:
        return 0;
    }
}

/******************************************************************************
 * 函数名 : VarDec
 * 用  途 : 根据变量声明节点构造类型信息, 并返回对应的字段 FieldList
 * 参  数 :
 *   - root      : VarDec 所对应的语法树节点
 *   - basictype : 基础类型(如 int/float), 或已构造好的类型(如 struct)
 * 返回值 :
 *   - 一个字段 FieldList 指针, 代表该变量的名称与类型
 * 说  明 :
 *   - 支持基本类型、一维数组、二维数组的声明
 *   - 如果需要更多维数组, 可以自行扩展
 ******************************************************************************/
FieldList VarDec(Node *root, TypePtr basictype)
{
    Node *temp = root; // 用于不断向下查找, 直到遇到 "ID" 节点
    int i = 0;         // 计数器, 表示数组嵌套层数

    // 找到真正的 ID 节点, 并记录嵌套层数 i
    while (strcmp(temp->child[0]->name, "ID") != 0)
    {
        temp = temp->child[0];
        i++;
    }
    // 变量名存储在 ID 节点的 text 中
    char *s = temp->child[0]->text;

    // 分配并初始化一个 FieldList, 用来存储变量名和类型
    FieldList field = (FieldList)malloc(sizeof(FieldList_));
    field->name = s;

    // 若根节点本身就是 ID, 说明非数组, 直接赋予 basictype
    if (strcmp(root->child[0]->name, "ID") == 0)
    {
        field->type = basictype;
        return field;
    }

    // 根据数组嵌套层数 i 决定类型结构
    switch (i)
    {
    case 1:
    {
        // 一维数组
        TypePtr var1 = (TypePtr)malloc(sizeof(Type_));
        var1->kind = ARRAY;
        var1->u.array_.size = atoi(root->child[2]->text); // [n] 中的 n
        var1->u.array_.elem = basictype;                  // 数组元素类型为 basictype
        field->type = var1;
        return field;
    }
    case 2:
    {
        // 二维数组
        // 外层数组
        TypePtr var1 = (TypePtr)malloc(sizeof(Type_));
        var1->kind = ARRAY;
        var1->u.array_.size = atoi(root->child[2]->text);
        var1->u.array_.elem = basictype;

        // 内层数组
        TypePtr var2 = (TypePtr)malloc(sizeof(Type_));
        var2->kind = ARRAY;
        var2->u.array_.size = atoi(root->child[0]->child[2]->text);
        var2->u.array_.elem = var1;

        field->type = var2;
        return field;
    }
    default:
        printf("error in VarDec\n"); // 提示不支持更多维度或错误情况
        break;
    }
    return field; // 理论上不会到达这里
}

/******************************************************************************
 * 函数名 : Specifier
 * 用  途 : 根据语法树节点解析类型声明, 生成 TypePtr
 * 参  数 :
 *   - root : 指向 Specifier 对应的语法树节点
 * 返回值 :
 *   - 创建好的 TypePtr, 可能是 BASIC(基本类型)或 STRUCTURE(结构体类型)
 * 说  明 :
 *   - 若为 "TYPE", 则返回基本类型 int/float
 *   - 若为 "StructSpecifier", 还需处理 Tag / DefList 等情况
 ******************************************************************************/
TypePtr Specifier(Node *root)
{
    // 如果是基本类型 TYPE
    TypePtr spe = (TypePtr)malloc(sizeof(Type_));
    if (strcmp(root->child[0]->name, "TYPE") == 0)
    {
        spe->kind = BASIC;
        // 若文本内容为 "int"
        if (strcmp(root->child[0]->text, "int") == 0)
            spe->u.basic_ = INT_TYPE;
        else
            spe->u.basic_ = FLOAT_TYPE;
        return spe;
    }
    else
    {
        // 结构体类型 StructSpecifier
        spe->kind = STRUCTURE;
        // 有 Tag: STRUCT Tag
        if (root->child[0]->childsum == 2)
        {
            // Tag 节点 ID
            char *s = root->child[0]->child[1]->child[0]->text;
            FieldList field = lookupSymbol(s, 0); // 在符号表中查找对应结构体
            if (field == NULL)
            {
                // 未定义
                printf("Error type 17 at Line %d: Undefined structure \"%s\".\n",
                       root->lineno, s);
                spe->u.structure_ = NULL;
                return spe;
            }
            else if (field->type != NULL)
            {
                // 如果确有对应类型
                return field->type;
            }
            spe->u.structure_ = NULL;
            return spe;
        }
        else
        {
            // 匿名或有名结构体定义: STRUCT OptTag LC DefList RC
            Node *DefList = root->child[0]->child[3];
            spe->u.structure_ = NULL;

            // 解析结构体内部的 DefList
            while (DefList != NULL)
            {
                Node *Def = DefList->child[0];
                // 获取内部字段的基本类型
                TypePtr basictype = Specifier(Def->child[0]);
                Node *DecList = Def->child[1];

                // 按照 DecList 逐个解析
                while (DecList->childsum == 3)
                {
                    FieldList field = VarDec(DecList->child[0]->child[0], basictype);
                    // 若存在初始化 => 错误
                    if (DecList->child[0]->childsum != 1)
                        printf("Error type 15 at Line %d: Variable %s in struct is initialized.\n",
                               Def->lineno, field->name);

                    // 检查是否在当前结构体中重名
                    FieldList temp = spe->u.structure_;
                    while (temp != NULL)
                    {
                        if (strcmp(temp->name, field->name) == 0)
                        {
                            printf("Error type 15 at Line %d: Redefined field \"%s\".\n",
                                   Def->lineno, field->name);
                            break;
                        }
                        temp = temp->tail;
                    }
                    // 若没在结构体中重名, 也要检查全局符号表
                    if (temp == NULL)
                    {
                        if (lookupSymbol(field->name, 0) != NULL)
                            printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
                                   Def->lineno, field->name);
                        else
                        {
                            insertSymbol(field);
                            field->tail = spe->u.structure_;
                            spe->u.structure_ = field;
                        }
                    }
                    DecList = DecList->child[2];
                }
                // 处理最后一个声明
                FieldList field = VarDec(DecList->child[0]->child[0], basictype);
                if (DecList->child[0]->childsum != 1)
                    printf("Error type 15 at Line %d: Variable \"%s\" in struct is initialized.\n",
                           Def->lineno, field->name);

                FieldList temp = spe->u.structure_;
                while (temp != NULL)
                {
                    if (strcmp(temp->name, field->name) == 0)
                    {
                        printf("Error type 15 at Line %d: Redefined field \"%s\".\n",
                               Def->lineno, field->name);
                        break;
                    }
                    temp = temp->tail;
                }
                if (temp == NULL)
                {
                    if (lookupSymbol(field->name, 0) != NULL)
                        printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
                               Def->lineno, field->name);
                    else
                    {
                        insertSymbol(field);
                        field->tail = spe->u.structure_;
                        spe->u.structure_ = field;
                    }
                }
                DefList = DefList->child[1];
            }

            // 如果有结构体标签(OptTag)
            if (root->child[0]->child[1] != NULL)
            {
                // 该结构体有名字
                FieldList field = (FieldList)malloc(sizeof(FieldList_));
                field->type = spe;
                char *s = root->child[0]->child[1]->child[0]->text;
                field->name = s;
                // 检查重名
                if (lookupSymbol(field->name, 0) != NULL)
                    printf("Error type 16 at Line %d: Duplicated name \"%s\".\n",
                           root->lineno, field->name);
                else
                    insertSymbol(field);
            }
            return spe;
        }
    }
}

/******************************************************************************
 * 函数名 : ExtDefList
 * 用  途 : 遍历处理外部定义列表, 包括:
 *   - 全局变量声明
 *   - 函数定义
 *   - 结构体声明等
 * 参  数 :
 *   - root : ExtDefList 对应的语法树节点
 * 返回值 : 无
 * 说  明 :
 *   - ExtDefList → ExtDef ExtDefList | e
 *   - ExtDef → Specifier ExtDecList SEMI | Specifier SEMI | Specifier FunDec CompSt
 ******************************************************************************/
void ExtDefList(Node *root)
{
    Node *ExtDefList = root;
    // 循环直到子节点为空
    while (ExtDefList->childsum != 0)
    {
        Node *ExtDef = ExtDefList->child[0];
        // 先获取基本类型(可能是 int/float/struct)
        TypePtr basictype = Specifier(ExtDef->child[0]);

        // 如果是外部变量定义: ExtDef -> Specifier ExtDecList SEMI
        // 解析所有外部变量
        if (strcmp(ExtDef->child[1]->name, "ExtDecList") == 0)
        {
            Node *temp = ExtDef->child[1];
            FieldList field;
            // 若有多个变量, 形如 VarDec COMMA ExtDecList
            while (temp->childsum == 3)
            {
                field = VarDec(temp->child[0], basictype);
                if (lookupSymbol(field->name, 0) != NULL)
                    printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
                           ExtDef->lineno, field->name);
                else
                    insertSymbol(field);
                temp = temp->child[2];
            }
            // 最后一个变量
            field = VarDec(temp->child[0], basictype);
            if (lookupSymbol(field->name, 0) != NULL)
                printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
                       ExtDef->lineno, field->name);
            else
                insertSymbol(field);
        }
        // 如果是函数定义: ExtDef -> Specifier FunDec CompSt
        else if (strcmp(ExtDef->child[1]->name, "FunDec") == 0)
        {
            // 构造函数符号
            FieldList field = (FieldList)malloc(sizeof(FieldList_));
            field->name = ExtDef->child[1]->child[0]->text; // 函数名
            TypePtr typ = (TypePtr)malloc(sizeof(Type_));
            typ->kind = FUNCTION;
            typ->u.function_.funcType = basictype; // 函数返回类型
            typ->u.function_.paramNum = 0;
            typ->u.function_.params = NULL;

            // 若 FunDec -> ID LP VarList RP
            if (strcmp(ExtDef->child[1]->child[2]->name, "VarList") == 0)
            {
                Node *VarList = ExtDef->child[1]->child[2];
                // 连续参数
                while (VarList->childsum != 1)
                {
                    TypePtr tempType = Specifier(VarList->child[0]->child[0]);
                    FieldList tempField = VarDec(VarList->child[0]->child[1], tempType);

                    if (lookupSymbol(tempField->name, 0) != NULL)
                        printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
                               ExtDef->lineno, tempField->name);
                    else
                        insertSymbol(tempField);

                    typ->u.function_.paramNum++;
                    tempField->tail = typ->u.function_.params;
                    typ->u.function_.params = tempField;
                    VarList = VarList->child[2];
                }
                // 最后一个参数
                TypePtr tempType = Specifier(VarList->child[0]->child[0]);
                FieldList tempField = VarDec(VarList->child[0]->child[1], tempType);
                if (lookupSymbol(tempField->name, 0) != NULL)
                    printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
                           ExtDef->lineno, tempField->name);
                else
                    insertSymbol(tempField);
                typ->u.function_.paramNum++;
                tempField->tail = typ->u.function_.params;
                typ->u.function_.params = tempField;
            }
            field->type = typ;

            // 检查函数是否重定义
            if (lookupSymbol(field->name, 1) != NULL)
                printf("Error type 4 at Line %d: Redefined function \"%s\".\n",
                       ExtDef->lineno, field->name);
            else
                insertSymbol(field);

            // 处理函数体 CompSt
            CompSt(ExtDef->child[2], basictype);
        }
        else
        {
            // 其他形式如: Specifier SEMI, 不需额外处理
        }

        // 若无后续外部定义, 则结束
        if (ExtDefList->child[1] == NULL)
            return;

        ExtDefList = ExtDefList->child[1];
    }
}

/******************************************************************************
 * 函数名 : CompSt
 * 用  途 : 处理函数内部的复合语句(即 { ... }), 包含局部变量声明和语句块
 * 参  数 :
 *   - root     : CompSt 节点
 *   - funcType : 当前函数的返回类型
 * 返回值 : 无
 * 说  明 :
 *   - CompSt → LC DefList StmtList RC
 *   - 首先处理 DefList(局部变量声明), 然后递归处理 StmtList
 ******************************************************************************/
void CompSt(Node *root, TypePtr funcType)
{
    Node *CompSt = root;
    // 第一个子节点是 LC, 第二个是 DefList, 第三个是 StmtList
    DefList(CompSt->child[1]);         // 处理局部变量声明
    Node *StmtList = CompSt->child[2]; // 处理语句列表

    // 逐个处理 Stmt
    while (StmtList != NULL)
    {
        Node *Stmt_ = StmtList->child[0];
        Stmt(Stmt_, funcType);
        StmtList = StmtList->child[1];
    }
}

/******************************************************************************
 * 函数名 : DefList
 * 用  途 : 处理局部变量声明列表
 * 参  数 :
 *   - root : DefList 节点
 * 返回值 : 无
 * 说  明 :
 *   - DefList → Def DefList | e
 *   - Def → Specifier DecList SEMI
 *   - DecList → Dec | Dec COMMA DecList
 *   - Dec → VarDec | VarDec ASSIGNOP Exp
 ******************************************************************************/
void DefList(Node *root)
{
    Node *DefList = root;
    // 循环直到空
    while (DefList != NULL)
    {
        Node *Def = DefList->child[0];
        // 获取声明的类型
        TypePtr basictype = Specifier(Def->child[0]);
        Node *DecList = Def->child[1];

        // DecList 可能包含多个声明
        while (DecList->childsum == 3)
        {
            FieldList field = VarDec(DecList->child[0]->child[0], basictype);
            if (lookupSymbol(field->name, 0) != NULL)
                printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
                       DecList->lineno, field->name);
            else
                insertSymbol(field);

            DecList = DecList->child[2];
        }
        // 最后一个声明
        FieldList field = VarDec(DecList->child[0]->child[0], basictype);
        if (lookupSymbol(field->name, 0) != NULL)
            printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
                   DecList->lineno, field->name);
        else
            insertSymbol(field);

        // 若无后续 DefList
        if (DefList->child[1] == NULL)
            return;

        DefList = DefList->child[1];
    }
}

/******************************************************************************
 * 函数名 : Stmt
 * 用  途 : 处理各种语句, 包括 return, 表达式语句, 复合语句, if/while 等
 * 参  数 :
 *   - root     : 语句节点 Stmt
 *   - funcType : 当前所在函数的返回类型
 * 返回值 : 无
 * 说  明 :
 *   - Stmt → Exp SEMI | CompSt | RETURN Exp SEMI
 *            | IF LP Exp RP Stmt
 *            | IF LP Exp RP Stmt ELSE Stmt
 *            | WHILE LP Exp RP Stmt
 ******************************************************************************/
void Stmt(Node *root, TypePtr funcType)
{
    Node *Stmt_ = root;

    // RETURN Exp SEMI
    if (strcmp(Stmt_->child[0]->name, "RETURN") == 0)
    {
        // 获取返回表达式的类型
        TypePtr returnType = Exp(Stmt_->child[1]);
        // 如果返回类型与函数声明类型不匹配
        if (TypeEqual(funcType, returnType) == 0)
        {
            printf("Error type 8 at Line %d: Type mismatched for return.\n",
                   Stmt_->lineno);
        }
    }
    // Exp SEMI
    else if (strcmp(Stmt_->child[0]->name, "Exp") == 0)
    {
        Exp(Stmt_->child[0]);
    }
    // CompSt
    else if (strcmp(Stmt_->child[0]->name, "CompSt") == 0)
    {
        CompSt(Stmt_->child[0], funcType);
    }
    // WHILE 循环语句
    else if (strcmp(Stmt_->child[0]->name, "WHILE") == 0)
    {
        // WHILE LP Exp RP Stmt
        TypePtr typ = Exp(Stmt_->child[2]); // 判断条件表达式
        if (!((typ->kind == BASIC) && (typ->u.basic_ == INT_TYPE)))
        {
            printf("Error type 5 at Line %d: Only type INT could be used for judgement.\n",
                   Stmt_->lineno);
        }
        // 处理循环体
        Stmt(Stmt_->child[4], funcType);
    }
    // IF 语句(可能有 ELSE)
    else if (Stmt_->childsum < 6)
    {
        // IF LP Exp RP Stmt
        TypePtr typ = Exp(Stmt_->child[2]);
        if (typ != NULL)
        {
            if (!((typ->kind == BASIC) && (typ->u.basic_ == INT_TYPE)))
            {
                printf("Error type 5 at Line %d: Only type INT could be used for judgement.\n",
                       Stmt_->lineno);
            }
        }
        Stmt(Stmt_->child[4], funcType);
    }
    else
    {
        // 带 ELSE
        // IF LP Exp RP Stmt ELSE Stmt
        TypePtr typ = Exp(Stmt_->child[2]);
        if (!((typ->kind == BASIC) && (typ->u.basic_ == INT_TYPE)))
        {
            printf("Error type 5 at Line %d: Only type INT could be used for judgement.\n",
                   Stmt_->lineno);
        }
        Stmt(Stmt_->child[4], funcType);
        Stmt(Stmt_->child[6], funcType);
    }
}

/******************************************************************************
 * 函数名 : Exp
 * 用  途 : 表达式语义分析, 检查类型匹配, 返回该表达式的类型
 * 参  数 :
 *   - root : Exp 对应的语法树节点
 * 返回值 :
 *   - 该表达式最终的类型(TypePtr), 若出错则返回 NULL
 * 说  明 :
 *   - 处理多种情况: 变量/整型/浮点数/运算符/赋值/函数调用/数组访问/结构体成员访问等
 ******************************************************************************/
TypePtr Exp(Node *root)
{
    if (root == NULL)
        return NULL;

    // Exp -> ID (变量)
    if ((strcmp(root->child[0]->name, "ID") == 0) && (root->childsum == 1))
    {
        FieldList field = lookupSymbol(root->child[0]->text, 0);
        if (field != NULL)
            return field->type;
        else
        {
            // 变量未定义
            printf("Error type 1 at Line %d: Undefined variable \"%s\".\n",
                   root->lineno, root->child[0]->text);
            return NULL;
        }
    }
    // Exp -> INT
    else if (strcmp(root->child[0]->name, "INT") == 0)
    {
        TypePtr typ = (TypePtr)malloc(sizeof(Type_));
        typ->kind = BASIC;
        typ->u.basic_ = INT_TYPE;
        return typ;
    }
    // Exp -> FLOAT
    else if (strcmp(root->child[0]->name, "FLOAT") == 0)
    {
        TypePtr typ = (TypePtr)malloc(sizeof(Type_));
        typ->kind = BASIC;
        typ->u.basic_ = FLOAT_TYPE;
        return typ;
    }
    // Exp -> LP Exp RP, 或 MINUS Exp, 或 NOT Exp
    else if ((strcmp(root->child[0]->name, "LP") == 0) ||
             (strcmp(root->child[0]->name, "MINUS") == 0) ||
             (strcmp(root->child[0]->name, "NOT") == 0))
    {
        return Exp(root->child[1]);
    }
    // Exp -> Exp PLUS Exp | Exp MINUS Exp | Exp STAR Exp | Exp DIV Exp
    else if ((strcmp(root->child[1]->name, "PLUS") == 0) ||
             (strcmp(root->child[1]->name, "MINUS") == 0) ||
             (strcmp(root->child[1]->name, "STAR") == 0) ||
             (strcmp(root->child[1]->name, "DIV") == 0))
    {
        TypePtr typ1 = Exp(root->child[0]);
        TypePtr typ2 = Exp(root->child[2]);
        if (TypeEqual(typ1, typ2) == 0)
        {
            if ((typ1 != NULL) && (typ2 != NULL))
                printf("Error type 7 at Line %d: Type mismatched for operands.\n",
                       root->lineno);
            return NULL;
        }
        else
            return typ1;
    }
    // Exp -> Exp RELOP Exp | Exp AND Exp | Exp OR Exp
    else if ((strcmp(root->child[1]->name, "AND") == 0) ||
             (strcmp(root->child[1]->name, "OR") == 0) ||
             (strcmp(root->child[1]->name, "RELOP") == 0))
    {
        TypePtr typ1 = Exp(root->child[0]);
        TypePtr typ2 = Exp(root->child[2]);
        if (TypeEqual(typ1, typ2) == 0)
        {
            if ((typ1 != NULL) && (typ2 != NULL))
                printf("Error type 7 at Line %d: Type mismatched for operands.\n",
                       root->lineno);
            return NULL;
        }
        else
        {
            // 布尔表达式结果为 int
            TypePtr typ = (TypePtr)malloc(sizeof(Type_));
            typ->kind = BASIC;
            typ->u.basic_ = INT_TYPE;
            return typ;
        }
    }
    // Exp -> Exp ASSIGNOP Exp
    else if (strcmp(root->child[1]->name, "ASSIGNOP") == 0)
    {
        // 赋值操作前检查左值合法性
        // 只能是 ID, 或 Exp DOT ID, 或 Exp LB Exp RB
        if (root->child[0]->childsum == 1)
        {
            if (!(strcmp(root->child[0]->child[0]->name, "ID") == 0))
            {
                printf("Error type 6 at Line %d: The left-hand side of an assignment must be a variable.\n",
                       root->lineno);
                return NULL;
            }
        }
        else if (root->child[0]->childsum == 3)
        {
            if (!((strcmp(root->child[0]->child[0]->name, "Exp") == 0) &&
                  (strcmp(root->child[0]->child[1]->name, "DOT") == 0) &&
                  (strcmp(root->child[0]->child[2]->name, "ID") == 0)))
            {
                printf("Error type 6 at Line %d: The left-hand side of an assignment must be a variable.\n",
                       root->lineno);
                return NULL;
            }
        }
        else if (root->child[0]->childsum == 4)
        {
            if (!((strcmp(root->child[0]->child[0]->name, "Exp") == 0) &&
                  (strcmp(root->child[0]->child[1]->name, "LB") == 0) &&
                  (strcmp(root->child[0]->child[2]->name, "Exp") == 0) &&
                  (strcmp(root->child[0]->child[3]->name, "RB") == 0)))
            {
                printf("Error type 6 at Line %d: The left-hand side of an assignment must be a variable.\n",
                       root->lineno);
                return NULL;
            }
        }

        TypePtr typ1 = Exp(root->child[0]);
        TypePtr typ2 = Exp(root->child[2]);
        if (TypeEqual(typ1, typ2) == 0)
        {
            if ((typ1 != NULL) && (typ2 != NULL))
                printf("Error type 5 at Line %d: Type mismatched for assignment.\n",
                       root->lineno);
            return NULL;
        }
        else
            return typ1;
    }
    // Exp -> ID LP RP | ID LP Args RP (函数调用)
    else if (strcmp(root->child[0]->name, "ID") == 0)
    {
        // 查找是否是函数符号
        FieldList fie = lookupSymbol(root->child[0]->text, 1);
        if (fie == NULL)
        {
            // 若在函数命名空间找不到, 则可能是变量/未定义
            FieldList fie2 = lookupSymbol(root->child[0]->text, 0);
            if (fie2 != NULL)
                printf("Error type 11 at Line %d: \"%s\" is not a function.\n",
                       root->lineno, root->child[0]->text);
            else
                printf("Error type 2 at Line %d: Undefined function \"%s\".\n",
                       root->lineno, root->child[0]->text);
            return NULL;
        }
        // 若查到函数, 获取其类型
        TypePtr definedType = fie->type;

        // 构造一个临时 FUNCTION 类型, 用于和 definedType 对比参数
        TypePtr typ = (TypePtr)malloc(sizeof(Type_));
        typ->kind = FUNCTION;
        typ->u.function_.paramNum = 0;
        typ->u.function_.params = NULL;

        // 若不是空参, 解析实参
        if (strcmp(root->child[2]->name, "RP") != 0)
        {
            // Args
            Node *temp = root->child[2];
            // 持续处理逗号分隔的实参
            while (temp->childsum != 1)
            {
                TypePtr tempType = Exp(temp->child[0]);
                FieldList tempField = (FieldList)malloc(sizeof(FieldList_));
                tempField->name = "no"; // 无实际名称, 仅用于占位
                tempField->type = tempType;
                typ->u.function_.paramNum++;
                tempField->tail = typ->u.function_.params;
                typ->u.function_.params = tempField;

                temp = temp->child[2];
            }
            // 最后一个实参
            TypePtr tempType = Exp(temp->child[0]);
            FieldList tempField = (FieldList)malloc(sizeof(FieldList_));
            tempField->name = "no";
            tempField->type = tempType;
            typ->u.function_.paramNum++;
            tempField->tail = typ->u.function_.params;
            typ->u.function_.params = tempField;
        }

        // 比较调用参数列表与函数定义的 params 是否匹配
        if (TypeEqual(typ, definedType) == 0)
        {
            printf("Error type 9 at Line %d: Params wrong in function \"%s\".\n",
                   root->lineno, root->child[0]->text);
            return NULL;
        }
        else
        {
            // 若匹配, 返回函数的返回类型
            return definedType->u.function_.funcType;
        }
    }
    // Exp -> Exp DOT ID (结构体成员访问)
    else if (strcmp(root->child[1]->name, "DOT") == 0)
    {
        TypePtr typ1 = Exp(root->child[0]);
        if (typ1->kind != STRUCTURE)
        {
            // 如果不是结构体, 则非法使用 "."
            Node *temp = root->child[0];
            char *s;
            switch (temp->childsum)
            {
            case 1:
                if (strcmp(temp->child[0]->name, "ID") == 0)
                    s = temp->child[0]->text;
                break;
            case 3:
                if (strcmp(temp->child[2]->name, "ID") == 0)
                    s = temp->child[0]->text;
                break;
            case 4:
                if (strcmp(temp->child[0]->name, "Exp") == 0)
                    if (strcmp(temp->child[0]->child[0]->name, "ID") == 0)
                        s = temp->child[0]->child[0]->text;
                break;
            default:
                s = "error";
                break;
            }
            if (lookupSymbol(s, 0) != NULL)
                printf("Error type 13 at Line %d: Illegal use of \".\".\n",
                       root->lineno);
            return NULL;
        }
        // 若是结构体, 则继续查找字段
        char *s = root->child[2]->text;      // 成员名
        FieldList temp = typ1->u.structure_; // 遍历结构体字段
        while (temp != NULL)
        {
            if (strcmp(temp->name, s) == 0)
                return temp->type;
            temp = temp->tail;
        }
        // 若没找到, 报错
        printf("Error type 14 at Line %d: Non-existent field \"%s\".\n",
               root->lineno, s);
        return NULL;
    }
    // Exp -> Exp LB Exp RB (数组访问)
    else if (strcmp(root->child[1]->name, "LB") == 0)
    {
        TypePtr typ1 = Exp(root->child[0]);
        if (typ1->kind != ARRAY)
        {
            // 若左侧不是数组类型, 则非法使用 "[]"
            Node *temp = root->child[0];
            char *s;
            switch (temp->childsum)
            {
            case 1:
                if (strcmp(temp->child[0]->name, "ID") == 0)
                    s = temp->child[0]->text;
                break;
            case 3:
                if (strcmp(temp->child[2]->name, "ID") == 0)
                    s = temp->child[0]->text;
                break;
            case 4:
                if (strcmp(temp->child[0]->name, "Exp") == 0)
                    if (strcmp(temp->child[0]->child[0]->name, "ID") == 0)
                        s = temp->child[0]->child[0]->text;
                break;
            default:
                s = "error";
                break;
            }
            if (lookupSymbol(s, 0) != NULL)
                printf("Error type 10 at Line %d: \"%s\" is not an array.\n",
                       root->lineno, s);
            return NULL;
        }
        // 检查数组下标应为整型
        TypePtr temp = Exp(root->child[2]);
        if (temp->kind != BASIC)
        {
            printf("Error type 12 at Line %d: there is not a integer between \"[\" and \"]\".\n",
                   root->lineno);
            return NULL;
        }
        else if (temp->u.basic_ == FLOAT_TYPE)
        {
            printf("Error type 12 at Line %d: there is not a integer between \"[\" and \"]\".\n",
                   root->lineno);
            return NULL;
        }
        // 若合法, 返回数组元素类型
        return typ1->u.array_.elem;
    }
    else
    {
        // 出现无法识别的表达式形式
        printf("in\n");
        return NULL;
    }
}
