# include "interim.h"
# include "semantic.h"

/* =========================================================
 * 核心机制总览
 * ---------------------------------------------------------
 * 1. 临时变量 / 标签生成  ——  new_temp() / new_label()
 *    · 维护全局计数 temp_num、lab_num，递增即可；
 *    · 只要求“唯一”，具体前缀/格式无硬性规定。
 *
 * 2. 条件翻译            ——  translate_Cond
 *    · 通用模板：
 *        IF x relop y GOTO Ltrue
 *        GOTO Lfalse
 *    · AND / OR / NOT：递归＋新标签组合真链 / 假链，实现短路。
 *
 * 3. 表达式求值          ——  translate_Exp
 *    · 覆盖整型常量、变量、单目/双目、数组、结构体、函数调用…
 *    · 若结果是 ADDRESS，先 *load* 到新的 temp 再参与运算；
 *    · 立即数统一在打印时加前缀 ‘#’。
 *
 * 4. 控制流语句          ——  translate_Stmt
 *    · if 无 else：Ltrue / Lfalse 两标签；
 *      if-else   ：再补一个 Lend（then 块结束处 GOTO Lend）。
 *    · while    ：Lbegin → 条件 → Lbody → GOTO Lbegin → Lend。
 *
 * 5. 内建 I/O            ——  translate_Exp 的特殊分支
 *    · read()   →  READ t                    // 直接返回值
 *    · write(x) →  WRITE x                   // 直接输出
 *    · 均不再生成 ARG / CALL 指令。
 *
 * 6. 内存申请            ——  translate_VarDec
 *    · 数组 / 结构体：先 new_temp 得到 tID，再 emit
 *        DEC tID size      // size 必为 4 的倍数
 *    · 普通标量变量不需要 DEC。
 *
 * 7. 回填机制            ——  translate_Cond / translate_Stmt
 *    · 先插入占位 IF/GOTO（目标未知）到链表尾；
 *    · 真正 LABEL 发射时插入链表适当位置 → “天然完成回填”。
 * ========================================================= */

int lab_num = 1;
int interim_is_error;
InterCode in_head = NULL;
InterCode in_now = NULL;
extern int temp_num;
int intercode_num;

void translate_print(FILE* f) {
    InterCode temp = in_head;
    int judge_is_null = 0;
    int a = 0;
    // printf("%d %d\n",lab_num,temp_num);
    while (temp != NULL) {
        // printf("%d ",temp -> kind);
        if (temp -> kind == ILABEL) {
            fprintf(f,"LABEL label");
            fprintf(f, "%d ", temp -> u.ulabel.op -> u_int);
            fprintf(f, ":");
        } else if (temp -> kind == IFUNCTION) {
            fprintf(f, "FUNCTION ");
            fprintf(f, "%s ", temp -> u.ulabel.op -> u_char);
            fprintf(f, ":");
        } else if (temp -> kind == ASSIGN){
            Operand temp1 = temp -> u.uassign.op1;
            Operand temp2 = temp -> u.uassign.op2;
            if (temp1 == NULL || temp2 == NULL) judge_is_null = 1;
            else if (temp1 -> kind == ADDRESS&&temp2 -> kind == ADDRESS){
                fprintf(f, "*t%d", temp1 -> u_int);
                fprintf(f, " := ");
                fprintf(f, "*t%d", temp2 -> u_int);
            } else if (temp2 -> kind == ADDRESS) {
                fprintf(f, "t%d", temp1 -> u_int);
                fprintf(f, " := ");
                fprintf(f, "*t%d", temp2 -> u_int);
            } else if (temp1 -> kind == ADDRESS){
                fprintf(f, "&t%d", temp1 -> u_int);
                fprintf(f, " := ");
                if (temp2 -> kind == CONSTANT) fprintf(f, "#%d", temp2 -> u_int);
                else fprintf(f, "t%d", temp2 -> u_int);
            } else {
                fprintf(f, "t%d", temp1 -> u_int);
                fprintf(f, " := ");
                if (temp2 -> kind == CONSTANT) fprintf(f, "#%d", temp2 -> u_int);
                else fprintf(f, "t%d", temp2 -> u_int);
            }
        } else if (temp -> kind == ADD || temp -> kind == SUB
                 ||temp -> kind == MUL || temp -> kind == DIV) {
            Operand temp1 = temp -> u.ubinop.result;
            Operand temp2 = temp -> u.ubinop.op1;
            Operand temp3 = temp -> u.ubinop.op2;
            if (temp1 != NULL) {
                fprintf(f, "t%d", temp1 -> u_int);
                fprintf(f, " := ");
                if (temp2 -> kind == CONSTANT) fprintf(f, "#%d", temp2 -> u_int);
                else fprintf(f, "t%d", temp2 -> u_int);
                if (temp -> kind == ADD) fprintf(f, " + ");
                else if (temp -> kind == SUB) fprintf(f, " - ");
                else if (temp -> kind == MUL) fprintf(f, " * ");
                else if (temp -> kind == DIV) fprintf(f, " / ");
                if (temp3 -> kind == CONSTANT) fprintf(f, "#%d", temp3 -> u_int);
                else fprintf(f, "t%d", temp3 -> u_int);
            }
        } else if (temp -> kind == ADDRASS2){
            Operand temp1 = temp -> u.uassign.op1;
            Operand temp2 = temp -> u.uassign.op2;
            fprintf(f, "t%d", temp1 -> u_int);
            fprintf(f, " := ");
            fprintf(f, "*t%d", temp2 -> u_int);
        } else if (temp -> kind == ADDRASS3) {
            Operand temp1 = temp -> u.uassign.op1;
            Operand temp2 = temp -> u.uassign.op2;
            fprintf(f, "*t%d", temp1 -> u_int);
            fprintf(f, " := ");
            if (temp2 -> kind == CONSTANT) fprintf(f, "#%d", temp2 -> u_int);
            else fprintf(f, "t%d", temp2 -> u_int);
        } else if (temp -> kind == ADDRASS1) {
            Operand temp1 = temp -> u.uassign.op1;
            Operand temp2 = temp -> u.uassign.op2;
            fprintf(f, "t%d", temp1 -> u_int);
            fprintf(f, " := ");
            fprintf(f, "&t%d", temp2 -> u_int);
        } else if (temp -> kind == GOTO) {
            fprintf(f, "GOTO label");
            fprintf(f, "%d", temp -> u.ulabel.op -> u_int);
        } else if (temp -> kind == IF ) {
            Operand temp1 = temp -> u.uif .x;
            Operand temp2 = temp -> u.uif .y;
            Operand temp3 = temp -> u.uif .z;
            Operand re = temp -> u.uif .relop;
            fprintf(f, "IF  ");
            if (temp1 -> kind == CONSTANT) fprintf(f, "#%d", temp1 -> u_int);
            else if (temp1 -> kind == ADDRESS) fprintf(f, "*t%d", temp1 -> u_int);
            else fprintf(f, "t%d", temp1 -> u_int);

            if (re -> u_int == 0) fprintf(f, "  ==  ");
            else if (re -> u_int == 1) fprintf(f, " != ");
            else if (re -> u_int == 2) fprintf(f, " < ");
            else if (re -> u_int == 3) fprintf(f, " > ");
            else if (re -> u_int == 4) fprintf(f, " <= ");
            else if (re -> u_int == 5) fprintf(f, " >= ");

            if (temp2 -> kind == CONSTANT) fprintf(f, "#%d", temp2 -> u_int);
            else if (temp2 -> kind == ADDRESS) fprintf(f, "*t%d", temp2 -> u_int);
            else fprintf(f, "t%d", temp2 -> u_int);
            fprintf(f, " GOTO label");
            fprintf(f, "%d", temp3 -> u_int);
        } else if (temp -> kind == RETURN) {
            fprintf(f, "RETURN ");
            if (temp -> u.ulabel.op -> kind == CONSTANT) fprintf(f, "#%d", temp -> u.ulabel.op -> u_int);
            else fprintf(f, "t%d", temp -> u.ulabel.op -> u_int);
        } else if (temp -> kind == DEC) {
            fprintf(f, "DEC ");
            fprintf(f, "t%d ", temp -> u.udec.op -> u_int);
            fprintf(f, "%d", temp -> u.udec.size);
        } else if (temp -> kind == ARG){
            fprintf(f, "ARG ");
            if (temp -> u.ulabel.op -> kind == CONSTANT) fprintf(f, "#%d", temp -> u.ulabel.op -> u_int);
            else if (temp -> u.ulabel.op -> kind == ADDRESS) fprintf(f, "&t%d", temp -> u.ulabel.op -> u_int);
            else if (temp -> u.ulabel.op -> kind == WADDRESS) fprintf(f, "*t%d", temp -> u.ulabel.op -> u_int);
            else fprintf(f, "t%d", temp -> u.ulabel.op -> u_int);
        } else if (temp -> kind == CALL){
            Operand temp1 = temp -> u.uassign.op1;
            Operand temp2 = temp -> u.uassign.op2;
            if (temp1!=NULL) fprintf(f, "t%d := ", temp1 -> u_int);
            else{
                Operand temp0 = new_temp();
                fprintf(f,"t%d := ", temp0 -> u_int);
            }
            fprintf(f, "CALL ");
            fprintf(f, "%s", temp2 -> u_char);
        } else if (temp -> kind == PARAM){
            fprintf(f, "PARAM ");
            if (temp -> u.ulabel.op -> kind == CONSTANT) fprintf(f, "#%d", temp -> u.ulabel.op -> u_int);
            else fprintf(f, "t%d", temp -> u.ulabel.op -> u_int);
        } else if (temp -> kind == READ){
            fprintf(f, "READ ");
            if (temp -> u.ulabel.op -> kind == CONSTANT) fprintf(f, "#%d", temp -> u.ulabel.op -> u_int);
            else fprintf(f, "t%d",temp -> u.ulabel.op -> u_int);
        } else if (temp -> kind == WRITE){
            fprintf(f, "WRITE ");
            if (temp -> u.ulabel.op -> kind == CONSTANT) fprintf(f, "#%d", temp -> u.ulabel.op -> u_int);
            else fprintf(f, "t%d", temp -> u.ulabel.op -> u_int);
        }
        if (!judge_is_null) fprintf(f, "\n");
        else judge_is_null = 0;
        temp = temp -> next;
    }
}

void insert_intercode(InterCode it) {
    // printf("%d ",it -> kind);
    it -> before = NULL;
    it -> next = NULL;
    if (in_head == NULL) in_head = it, intercode_num++;
    if (in_now != NULL) {
        in_now -> next = it,
        it -> before = in_now;
    }
    in_now = it;
}

Operand new_temp() {
    // printf(" --- \n");
    Operand now = (Operand)malloc(sizeof(struct Operand_));
    now -> kind = TEMP;
    now -> u_int = temp_num;
    now -> u_char = "Youngsc\0";
    temp_num++;
    return now;
}

Operand new_label() {
    Operand now = (Operand)malloc(sizeof(struct Operand_));
    now -> kind = LABEL;
    now -> u_int = lab_num;
    lab_num++;
    return now;
}

int get_size(Type type) {
    if (type == NULL) return 0;
    if (type -> kind == BASIC) return 4;
    else if (type -> kind == ARRAY) {
        int temp = type -> u.array.size * get_size(type -> u.array.elem);
        return temp;
    }
    else if(type -> kind == STRUCTURE) {
        int offset = 0;
        FieldList count = type -> u.structure;
        while (count != NULL) {
            offset += get_size(count->type);
            count = count -> tail;
        }
        return offset;
    }
}

int get_offset(Type return_type, struct Node* after) {
    if (return_type == NULL) return 0;
    if (return_type -> kind == BASIC) return 4;
    else if (return_type -> kind == STRUCTURE) {
        int offset = 0;
        FieldList count = return_type -> u.structure;
        while (count != NULL) {
            if (!strcmp(count -> name, after -> char_name)) break;
            offset += get_size(count -> type);
            count = count -> tail;
        }
        return offset;
    }
    else if (return_type -> kind == ARRAY) {
        if (return_type -> u.array.elem -> kind == ARRAY) {
            interim_is_error=1;
            printf("Cannot translate: Code contains variables of error array type.\n");
            return -1;
        }
        int offset = 0;
        Type elem = return_type -> u.array.elem;
        offset = get_size(elem);
        return offset;
    }
}

void translate_Program(struct Node* now, FILE* F) {
    // printf("Program\n");
    if (interim_is_error == 1) return;
    struct Node* child = now -> child;
    while (child -> child != NULL) {
        struct Node* extdef = child -> child;
        translate_ExtDef(extdef);
        child = extdef -> brother;
    }
    if (interim_is_error == 0) {
        translate_print(F);
    }
}

void translate_ExtDef(struct Node* now) {
    // printf("ExtDef\n");
    /*
    ExtDef -> Specifier ExtDecList SEMI
    | Specifier SEMI
    | Specifier FunDec CompSt
    */
    if (interim_is_error) return;
    struct Node* bro = now -> child -> brother;
    if (!strcmp(bro -> index, "FunDec\0"))
        translate_FunDec(bro),
        translate_CompSt(bro -> brother);

    else if (!strcmp(now -> child -> index, "Specifier\0"))
        translate_Specifier(now->child);
}

void translate_FunDec(struct Node* now) {
    // printf("FunDec\n");
    //FunDec -> ID LP VarList RP| ID LP RP
    if (interim_is_error) return;
    struct Node* child = now -> child;
    Operand func_op = (Operand)malloc(sizeof(struct Operand_));
    InterCode func_in = (InterCode)malloc(sizeof(struct InterCode_));
    func_op -> kind = FUNCTION;
    func_op -> u_char = child -> char_name;
    func_in -> kind = IFUNCTION;
    func_in -> u.ulabel.op = func_op;
    insert_intercode(func_in);
    if (child -> brother -> brother -> brother == NULL) return;
    TABLE find_func = search(child -> char_name);
    FieldList func_field = find_func -> field -> type -> u.function -> argv;
    while (func_field != NULL) {
        Operand field_op = (Operand)malloc(sizeof(struct Operand_));
        InterCode field_in=(InterCode)malloc(sizeof(struct InterCode_));
        field_op -> u_char = func_field -> name;
        if(func_field -> type -> kind == BASIC) field_op -> kind = VARIABLE;
        else field_op->kind = ADDRESS;
        TABLE find_it = search(func_field -> name);
        field_op -> u_int = find_it -> variable;
        field_in -> kind = PARAM;
        field_in -> u.ulabel.op = field_op;
        insert_intercode(field_in);
        func_field = func_field->tail;
    }
}

void translate_CompSt(struct Node* now) {
    //CompSt -> LC DefList StmtList RC
    // printf("CompSt\n");
    if (interim_is_error) return;
    struct Node* deflist = now -> child -> brother;
    struct Node* stmtlist = deflist -> brother;
    translate_DefList(deflist);
    translate_StmtList(stmtlist);
    return;
}

void translate_DefList(struct Node* now) {
    //DefList -> Def DefList|
    // printf("DefList\n");
    if (interim_is_error) return;
    struct Node* def = now->child;
    while (def != NULL) {
        translate_Def(def);
        def = def -> brother -> child;
    }
    return;
}

void translate_StmtList(struct Node* now) {
    //StmtList -> Stmt StmtList|
    // printf("StmtList\n");
    if (interim_is_error) return;
    struct Node* stmt = now -> child;
    while (stmt!=NULL){
        translate_Stmt(stmt);
        stmt = stmt -> brother -> child;
    }
    return;
}

void translate_Def(struct Node* now) {
    //Def -> Specifier DecList SEMI
    // printf("Def\n");
    if (interim_is_error) return;
    struct Node* declist = now -> child -> brother;
    translate_DecList(declist);
}

/*************************************************************************
 * translate_Stmt
 * -----------------------------------------------------------------------
 * 把语法树结点 Stmt 翻译成 IR。
 * 产生式（六种）：                对应翻译模板
 *   1) Exp SEMI                 —— 仅求值无结果
 *   2) CompSt                   —— 递归调用 translate_CompSt
 *   3) RETURN Exp SEMI          —— 计算返回值 → RETURN
 *   4) IF … (无 else)           —— 条件真/假两标签
 *   5) IF … ELSE …             —— 条件真/假 + Lend 汇合
 *   6) WHILE …                 —— Lbegin·条件·Lbody·回跳·Lend
 *
 * 参数：
 *   now :  Stmt 语法树指针
 *
 * 注意：
 *   - 短路条件翻译复用 translate_Cond。
 *************************************************************************/
void translate_Stmt(struct Node* now) {
    /* 若之前已标记“无法翻译”，直接返回 */
    if (interim_is_error) return;

    struct Node* child = now->child;          /* Stmt 第一个孩子 */

    /*============================================================
      1.  Exp SEMI      —— 仅评估表达式，结果无人使用
    ============================================================*/
    if (!strcmp(child->index, "Exp"))
        translate_Exp(child, NULL);           /* place = NULL */

    /*============================================================
      2.  复合语句  { … }  —— 递归处理内部 DefList/StmtList
    ============================================================*/
    else if (!strcmp(child->index, "CompSt"))
        translate_CompSt(child);

    /*============================================================
      3.  RETURN Exp SEMI
          若返回值是 ADDRESS，需要先 *load* 再 RETURN
    ============================================================*/
    else if (!strcmp(child->index, "RETURN")) {
        Operand t_ret = new_temp();           /* 保存 Exp 结果 */
        translate_Exp(child->brother, t_ret);

        Operand real_ret = NULL;              /* 真正传给 RETURN 的 op */
        if (t_ret->kind == ADDRESS) {         /* *load* */
            real_ret = new_temp();
            InterCode load = malloc(sizeof *load);
            load->kind = ADDRASS2;            /* real := *addr */
            load->u.uassign.op1 = real_ret;
            load->u.uassign.op2 = t_ret;
            insert_intercode(load);
        }

        /* 生成 RETURN */
        InterCode ic = malloc(sizeof *ic);
        ic->kind = RETURN;
        ic->u.ulabel.op = (real_ret == NULL) ? t_ret : real_ret;
        insert_intercode(ic);
    }

    /*============================================================
      4&5.  IF …  /  IF … ELSE …
    ============================================================*/
    else if (!strcmp(child->index, "IF")) {
        struct Node* condExp  = child->brother->brother;          /* 条件 Exp */
        struct Node* elseNode = condExp->brother->brother->brother;/* 若存在 */

        if (elseNode == NULL) {   /* -------- IF (cond) stmt -------- */
            Operand Ltrue  = new_label();
            Operand Lend   = new_label();

            translate_Cond(condExp, Ltrue, Lend);                 /* 条件 */

            /* Ltrue: then 语句 */
            InterCode labT = malloc(sizeof *labT);
            labT->kind = ILABEL; labT->u.ulabel.op = Ltrue;
            insert_intercode(labT);

            translate_Stmt(condExp->brother->brother);            /* then */

            /* Lend: */
            InterCode labEnd = malloc(sizeof *labEnd);
            labEnd->kind = ILABEL; labEnd->u.ulabel.op = Lend;
            insert_intercode(labEnd);
            return;
        }

        else {                 /* -------- IF … ELSE … -------- */
            Operand Ltrue  = new_label();
            Operand Lfalse = new_label();
            Operand Lend   = new_label();

            translate_Cond(condExp, Ltrue, Lfalse);               /* 条件 */

            /* Ltrue: then 分支 */
            InterCode labT = malloc(sizeof *labT);
            labT->kind = ILABEL; labT->u.ulabel.op = Ltrue;
            insert_intercode(labT);

            translate_Stmt(condExp->brother->brother);            /* then */

            /* then 结束跳过 else 到 Lend */
            InterCode goEnd = malloc(sizeof *goEnd);
            goEnd->kind = GOTO; goEnd->u.ulabel.op = Lend;
            insert_intercode(goEnd);

            /* Lfalse: else 分支 */
            InterCode labF = malloc(sizeof *labF);
            labF->kind = ILABEL; labF->u.ulabel.op = Lfalse;
            insert_intercode(labF);

            translate_Stmt(condExp->brother->brother->brother->brother);

            /* Lend: 汇合 */
            InterCode labEnd = malloc(sizeof *labEnd);
            labEnd->kind = ILABEL; labEnd->u.ulabel.op = Lend;
            insert_intercode(labEnd);
            return;
        }
    }

    /*============================================================
      6.  WHILE (cond) stmt
          Lbegin:
              IF cond GOTO Lbody
              GOTO Lend
          Lbody:
              stmt
              GOTO Lbegin
          Lend:
    ============================================================*/
    else if (!strcmp(child->index, "WHILE")) {
        struct Node* condExp = child->brother->brother;           /* 条件 Exp */

        Operand Lbegin = new_label();
        Operand Lbody  = new_label();
        Operand Lend   = new_label();

        /* Lbegin: */
        InterCode labBegin = malloc(sizeof *labBegin);
        labBegin->kind = ILABEL; labBegin->u.ulabel.op = Lbegin;
        insert_intercode(labBegin);

        /* 条件判断，真跳 Lbody，假跳 Lend */
        translate_Cond(condExp, Lbody, Lend);

        /* Lbody: */
        InterCode labBody = malloc(sizeof *labBody);
        labBody->kind = ILABEL; labBody->u.ulabel.op = Lbody;
        insert_intercode(labBody);

        translate_Stmt(condExp->brother->brother);                /* 循环体 */

        /* 回跳 Lbegin */
        InterCode goBegin = malloc(sizeof *goBegin);
        goBegin->kind = GOTO; goBegin->u.ulabel.op = Lbegin;
        insert_intercode(goBegin);

        /* Lend: */
        InterCode labEnd = malloc(sizeof *labEnd);
        labEnd->kind = ILABEL; labEnd->u.ulabel.op = Lend;
        insert_intercode(labEnd);
    }
}

void translate_DecList(struct Node* now){
    //DecList -> Dec| Dec COMMA DecList
    // printf("DecList\n");
    if (interim_is_error) return;
    struct Node* child = now -> child;
    translate_Dec(child);
    if (child -> brother != NULL) translate_DecList(child -> brother -> brother);
}

/*=====================================================================
 * translate_Exp
 * --------------------------------------------------------------------
 * 功能：把语法树结点 Exp 翻译成三地址 IR；若 place 非 NULL，
 *       则最终结果应存入 place（VARIABLE / TEMP / ADDRESS…）。
 *
 * 说明：产生式情况非常多，本函数逐分支匹配。
 *====================================================================*/
void translate_Exp(struct Node* now, Operand place) {
    /* ---------- 基础检查 ---------- */
    if (interim_is_error) return;

    struct Node* child    = now->child;          /* 第 1 个子结点  */
    struct Node* fir_bro  = child->brother;      /* 第一兄弟       */

    /*=================================================================
     * 一、最简单形态：INT 常量 或 ID 变量（无兄弟）
     *================================================================*/
    if (fir_bro == NULL) {
        /* ---- 1. INT ---- */
        if (!strcmp(child->index, "INT")) {
            int value = child->int_number;
            if (place == NULL) return;           /* 调用者不关心结果 */
            place->kind  = CONSTANT;
            place->u_int = value;
            return;
        }
        /* ---- 2. ID ---- */
        else if (!strcmp(child->index, "ID")) {
            TABLE sym = search(child->char_name);/* 查符号表 */
            if (place == NULL) return;

            /* 非形参且非基本类型 ⇒ ADDRESS；否则 VARIABLE */
            if (!sym->is_from_func &&
                sym->field->type->kind != BASIC &&
                sym->field->type->kind != FUNCT)
                place->kind = ADDRESS;
            else if (!sym->is_from_func &&
                     sym->field->type->kind != BASIC)
                place->kind = VARIABLE;

            place->u_char = child->char_name;
            place->u_int  = sym->variable;
            place->type   = sym->field->type;
            return;
        }
    }

    /*=================================================================
     * 二、一元运算：MINUS Exp / NOT Exp
     *   sec_bro == NULL 说明产生式形如 "MINUS Exp"
     *================================================================*/
    struct Node* sec_bro = fir_bro->brother;
    if (sec_bro == NULL) {
        /* ---- 1. 取负: MINUS Exp ---- */
        if (!strcmp(child->index, "MINUS")) {
            if (place == NULL) return;

            Operand t = new_temp();                 /* 保存被取负的值 */
            translate_Exp(child->brother, t);

            /* place := #0 - t */
            Operand zero = malloc(sizeof *zero);
            zero->kind = CONSTANT; zero->u_int = 0;

            InterCode ic = malloc(sizeof *ic);
            ic->kind            = SUB;
            ic->u.ubinop.result = place;
            ic->u.ubinop.op1    = zero;
            ic->u.ubinop.op2    = t;
            if (place->kind == FROM_ARG) place->kind = VARIABLE;
            insert_intercode(ic);
            return;
        }
        /* ---- 2. 逻辑非: NOT Exp ---- */
        else if (!strcmp(child->index, "NOT")) {
            Operand Ltrue  = new_label();
            Operand Lfalse = new_label();

            /* place := #0 */
            Operand zero = malloc(sizeof *zero);
            zero->kind = CONSTANT; zero->u_int = 0;

            InterCode asn0 = malloc(sizeof *asn0);
            asn0->kind = ASSIGN;
            asn0->u.uassign.op1 = place;
            asn0->u.uassign.op2 = zero;
            insert_intercode(asn0);

            /* 翻译条件，真跳 Ltrue 假跳 Lfalse */
            translate_Cond(now, Ltrue, Lfalse);

            /* Ltrue: place := #1 */
            InterCode labT = malloc(sizeof *labT);
            labT->kind = ILABEL; labT->u.ulabel.op = Ltrue;
            insert_intercode(labT);

            Operand one = malloc(sizeof *one);
            one->kind = CONSTANT; one->u_int = 1;

            InterCode asn1 = malloc(sizeof *asn1);
            asn1->kind = ASSIGN;
            asn1->u.uassign.op1 = place;
            asn1->u.uassign.op2 = one;
            insert_intercode(asn1);

            /* Lfalse: */
            InterCode labF = malloc(sizeof *labF);
            labF->kind = ILABEL; labF->u.ulabel.op = Lfalse;
            insert_intercode(labF);
            return;
        }
    }

    /*=================================================================
     * 三、赋值：Exp ASSIGNOP Exp
     *================================================================*/
    if (!strcmp(fir_bro->index, "ASSIGNOP")) {
        /* 左值是简单 ID */
        if (!strcmp(child->child->index, "ID")) {
            Operand rhs = new_temp();             /* 右值 */
            translate_Exp(fir_bro->brother, rhs);

            /* tID := rhs */
            TABLE sym = search(child->child->char_name);
            Operand lhs = malloc(sizeof *lhs);
            lhs->kind  = VARIABLE;
            lhs->u_char = child->child->char_name;
            lhs->u_int  = sym->variable;

            InterCode asn1 = malloc(sizeof *asn1);
            asn1->kind = ASSIGN;
            asn1->u.uassign.op1 = lhs;
            asn1->u.uassign.op2 = rhs;
            insert_intercode(asn1);

            /* place := tID (若需要) */
            InterCode asn2 = malloc(sizeof *asn2);
            asn2->kind = ASSIGN;
            asn2->u.uassign.op1 = place;
            asn2->u.uassign.op2 = lhs;
            insert_intercode(asn2);
            return;
        }
        /* 复杂左值：*p / a[i] … */
        else {
            Operand addr = new_temp();            /* 地址 */
            translate_Exp(child, addr);

            Operand rhs = new_temp();
            translate_Exp(fir_bro->brother, rhs);

            /* ADDRESS 右值需提前 load */
            Operand real_rhs = rhs;
            if (rhs->kind == ADDRESS) {
                real_rhs = new_temp();
                InterCode load = malloc(sizeof *load);
                load->u.uassign.op1 = real_rhs;
                load->u.uassign.op2 = rhs;
                insert_intercode(load);
            }

            /* *addr := real_rhs */
            InterCode store = malloc(sizeof *store);
            store->kind = ADDRASS3;
            store->u.uassign.op1 = addr;
            store->u.uassign.op2 = real_rhs;
            insert_intercode(store);

            /* place := real_rhs */
            InterCode retasn = malloc(sizeof *retasn);
            retasn->kind = ASSIGN;
            retasn->u.uassign.op1 = place;
            retasn->u.uassign.op2 = real_rhs;
            insert_intercode(retasn);
            return;
        }
    }

    /*=================================================================
     * 四、逻辑 AND / OR / RELOP，返回 0/1
     *================================================================*/
    if (!strcmp(fir_bro->index, "AND") ||
        !strcmp(fir_bro->index, "OR")  ||
        !strcmp(fir_bro->index, "RELOP")) {

        Operand Ltrue  = new_label();
        Operand Lfalse = new_label();

        /* place := #0 */
        Operand zero = malloc(sizeof *zero);
        zero->kind = CONSTANT; zero->u_int = 0;

        InterCode asn0 = malloc(sizeof *asn0);
        asn0->kind = ASSIGN;
        asn0->u.uassign.op1 = place;
        asn0->u.uassign.op2 = zero;
        insert_intercode(asn0);

        /* 条件翻译 */
        translate_Cond(now, Ltrue, Lfalse);

        /* Ltrue: place := #1 */
        InterCode labT = malloc(sizeof *labT);
        labT->kind = ILABEL; labT->u.ulabel.op = Ltrue;
        insert_intercode(labT);

        Operand one = malloc(sizeof *one);
        one->kind = CONSTANT; one->u_int = 1;

        InterCode asn1 = malloc(sizeof *asn1);
        asn1->kind = ASSIGN;
        asn1->u.uassign.op1 = place;
        asn1->u.uassign.op2 = one;
        insert_intercode(asn1);

        /* Lfalse: */
        InterCode labF = malloc(sizeof *labF);
        labF->kind = ILABEL; labF->u.ulabel.op = Lfalse;
        insert_intercode(labF);
        return;
    }

    /*=================================================================
     * 五、四则运算：Exp PLUS/MINUS/STAR/DIV Exp
     *================================================================*/
    if (!strcmp(fir_bro->index, "PLUS")  || !strcmp(fir_bro->index, "MINUS") ||
        !strcmp(fir_bro->index, "STAR")  || !strcmp(fir_bro->index, "DIV")) {

        Operand t1 = new_temp();
        Operand t2 = new_temp();
        translate_Exp(child,            t1);     /* 左操作数 */
        translate_Exp(fir_bro->brother, t2);     /* 右操作数 */

        /* 若为 ADDRESS 需 load */
        Operand l = t1, r = t2;
        if (t1->kind == ADDRESS) {
            l = new_temp();
            InterCode loadL = malloc(sizeof *loadL);
            loadL->u.uassign.op1 = l;
            loadL->u.uassign.op2 = t1;
            insert_intercode(loadL);
        }
        if (t2->kind == ADDRESS) {
            r = new_temp();
            InterCode loadR = malloc(sizeof *loadR);
            loadR->u.uassign.op1 = r;
            loadR->u.uassign.op2 = t2;
            insert_intercode(loadR);
        }

        /* result := l op r */
        InterCode ic = malloc(sizeof *ic);
        if (!strcmp(fir_bro->index, "PLUS"))   ic->kind = ADD;
        else if (!strcmp(fir_bro->index, "MINUS")) ic->kind = SUB;
        else if (!strcmp(fir_bro->index, "STAR"))  ic->kind = MUL;
        else if (!strcmp(fir_bro->index, "DIV"))   ic->kind = DIV;

        ic->u.ubinop.result = place;
        ic->u.ubinop.op1    = l;
        ic->u.ubinop.op2    = r;
        insert_intercode(ic);
        return;
    }

    /*=================================================================
     * 六、结构体域访问：Exp DOT ID
     *================================================================*/
    if (!strcmp(fir_bro->index, "DOT")) {
        Operand base = new_temp();
        translate_Exp(child, base);            /* 计算结构体基址(或变量) */

        /* 若 base 为 VARIABLE，先取地址 */
        if (base->kind == VARIABLE) {
            Operand addr = new_temp(); addr->kind = ADDRESS;
            InterCode addr_ic = malloc(sizeof *addr_ic);
            addr_ic->kind = ADDRASS1;          /* addr := &base */
            addr_ic->u.uassign.op1 = addr;
            addr_ic->u.uassign.op2 = base;
            insert_intercode(addr_ic);
            base = addr;
        }

        /* 计算域偏移 */
        int offset = get_offset(base->type, fir_bro->brother);
        if (offset == -1) return;

        Operand coff = malloc(sizeof *coff);
        coff->kind = CONSTANT; coff->u_int = offset;

        if (place == NULL) return;
        if (place->kind == FROM_ARG) place->kind = WADDRESS;
        else                          place->kind = ADDRESS;
        place->type = search(fir_bro->brother->char_name)->field->type;

        /* place = base + offset */
        InterCode add_ic = malloc(sizeof *add_ic);
        add_ic->kind = ADD;
        add_ic->u.ubinop.result = place;
        add_ic->u.ubinop.op1    = base;
        add_ic->u.ubinop.op2    = coff;
        insert_intercode(add_ic);
        return;
    }

    /*=================================================================
     * 七、数组访问：Exp LB Exp RB
     *================================================================*/
    if (!strcmp(fir_bro->index, "LB")) {
        Operand base = new_temp();             /* 数组基址/首元素地址 */
        translate_Exp(child, base);

        /* 若 base 是 VARIABLE，先取地址 */
        if (base->kind == VARIABLE) {
            Operand addr = new_temp(); addr->kind = ADDRESS;
            InterCode addr_ic = malloc(sizeof *addr_ic);
            addr_ic->kind = ADDRASS1;
            addr_ic->u.uassign.op1 = addr;
            addr_ic->u.uassign.op2 = base;
            insert_intercode(addr_ic);
            base = addr;
        }

        int elem_size = get_offset(base->type, NULL);
        if (elem_size == -1) return;

        /* 计算 index*size */
        Operand index = new_temp();
        translate_Exp(fir_bro->brother, index);

        Operand bytes = new_temp();
        Operand csize = malloc(sizeof *csize);
        csize->kind = CONSTANT; csize->u_int = elem_size;

        InterCode mul_ic = malloc(sizeof *mul_ic);
        mul_ic->kind = MUL;
        mul_ic->u.ubinop.result = bytes;
        mul_ic->u.ubinop.op1    = index;
        mul_ic->u.ubinop.op2    = csize;
        insert_intercode(mul_ic);

        /* place = base + bytes */
        if (place == NULL) return;
        if (place->kind == FROM_ARG) place->kind = WADDRESS;
        else                          place->kind = ADDRESS;
        place->type = base->type->u.array.elem;

        InterCode add_ic = malloc(sizeof *add_ic);
        add_ic->kind = ADD;
        add_ic->u.ubinop.result = place;
        add_ic->u.ubinop.op1    = base;
        add_ic->u.ubinop.op2    = bytes;
        insert_intercode(add_ic);
        return;
    }

    /*=================================================================
     * 八、括号消除：Exp → (Exp)
     *================================================================*/
    if (!strcmp(fir_bro->index, "Exp")) {
        translate_Exp(fir_bro, place);
        return;
    }

    /*=================================================================
     * 九、函数调用
     *   1) ID LP Args RP
     *   2) ID LP RP
     *
     *   - 内建 write(x) / read() 特殊处理
     *================================================================*/
    /* ---- 1. 带实参 ---- */
    if (!strcmp(sec_bro->index, "Args")) {
        char* fname = child->char_name;

        /* 内建 write(x) → WRITE op */
        if (!strcmp(fname, "write")) {
            Operand arg = new_temp();
            translate_Exp(sec_bro->child, arg);

            /* ADDRESS 需先 load */
            Operand real = arg;
            if (arg->kind == ADDRESS) {
                real = new_temp();
                InterCode load = malloc(sizeof *load);
                load->u.uassign.op1 = real;
                load->u.uassign.op2 = arg;
                insert_intercode(load);
            }

            InterCode w_ic = malloc(sizeof *w_ic);
            w_ic->kind = WRITE;
            w_ic->u.ulabel.op = real;
            insert_intercode(w_ic);
            return;
        }

        /* 普通函数：先处理 Args（逆序 ARG）再 CALL */
        translate_Args(sec_bro, NULL);

        Operand fop = malloc(sizeof *fop);
        fop->kind = FUNCTION; fop->u_char = fname;

        InterCode call_ic = malloc(sizeof *call_ic);
        call_ic->kind = CALL;
        call_ic->u.uassign.op1 = place;
        call_ic->u.uassign.op2 = fop;
        insert_intercode(call_ic);
        return;
    }

    /* ---- 2. 无实参 ---- */
    if (!strcmp(sec_bro->index, "RP")) {
        char* fname = child->char_name;

        /* 内建 read() → READ place */
        if (!strcmp(fname, "read")) {
            InterCode r_ic = malloc(sizeof *r_ic);
            r_ic->kind = READ;
            r_ic->u.ulabel.op = place;
            insert_intercode(r_ic);
            return;
        }

        /* 普通无参函数 CALL */
        Operand fop = malloc(sizeof *fop);
        fop->kind = FUNCTION; fop->u_char = fname;

        InterCode call_ic = malloc(sizeof *call_ic);
        call_ic->kind = CALL;
        call_ic->u.uassign.op1 = place;
        call_ic->u.uassign.op2 = fop;
        insert_intercode(call_ic);
        return;
    }
}

/***********************************************************************
 * translate_Cond
 * ---------------------------------------------------------------------
 * 把布尔（条件）表达式 Exp 翻译为“真跳 lt / 假跳 lf”的
 *   IF … GOTO … / GOTO …  指令序列。
 *
 * 入口参数：
 *   now :  当前 Cond/Exp 语法树结点
 *   lt  :  条件成立时跳转的标签（LABEL Operand）
 *   lf  :  条件不成立时跳转的标签
 *
 * 生成策略：
 *   1.  Relop   ➜  IF x rel y GOTO lt;  GOTO lf
 *   2.  NOT     ➜  调换真/假目标递归处理
 *   3.  AND     ➜  (E1, Lmid=新标签)   E1.false→lf
 *                                    Lmid: E2.true→lt
 *   4.  OR      ➜  (E1, Lmid=新标签)   E1.true →lt
 *                                    Lmid: E2.true→lt
 *   5.  其它     ➜  IF x != #0 GOTO lt; GOTO lf
 ***********************************************************************/
void translate_Cond(struct Node* now, Operand lt, Operand lf) {
    if (interim_is_error) return;

    struct Node* child = now->child;   /* Exp 的第 1 个孩子 */

    /*====================================================
     * 1. 形如  E1 RELOP E2
     *===================================================*/
    if (child->brother != NULL &&
        !strcmp(child->brother->index, "RELOP")) {

        Operand t1 = new_temp();        /* 左操作数结果 */
        Operand t2 = new_temp();        /* 右操作数结果 */
        Operand rel = malloc(sizeof *rel);  /* 关系运算符 */

        /* 递归翻译左右子表达式 */
        translate_Exp(child,                     t1);
        translate_Exp(child->brother->brother,  t2);

        rel->kind  = RELOP;
        rel->u_int = child->brother->linenumber;/* 0~5 对应六种 relop */

        /* IF t1 rel t2 GOTO lt */
        InterCode if_ic = malloc(sizeof *if_ic);
        if_ic->kind      = IF;
        if_ic->u.uif.x   = t1;
        if_ic->u.uif.relop = rel;
        if_ic->u.uif.y   = t2;
        if_ic->u.uif.z   = lt;
        insert_intercode(if_ic);

        /* GOTO lf */
        InterCode go_ic = malloc(sizeof *go_ic);
        go_ic->kind        = GOTO;
        go_ic->u.ulabel.op = lf;
        insert_intercode(go_ic);
    }

    /*====================================================
     * 2. 逻辑非   NOT Exp       —— 交换 lt/lf
     *===================================================*/
    else if (!strcmp(child->index, "NOT")) {
        translate_Cond(child->brother, lf, lt);
    }

    /*====================================================
     * 3. 逻辑与   E1 AND E2
     *     若 E1 假 → 直接 lf
     *     若 E1 真 → 跳到 Lmid，继续判断 E2
     *===================================================*/
    else if (child->brother != NULL &&
             !strcmp(child->brother->index, "AND")) {

        Operand Lmid = new_label();          /* E1 真时继续的标签 */

        translate_Cond(child, Lmid, lf);     /* 先处理 E1 */

        /* LABEL Lmid */
        InterCode lab_mid = malloc(sizeof *lab_mid);
        lab_mid->kind = ILABEL; lab_mid->u.ulabel.op = Lmid;
        insert_intercode(lab_mid);

        translate_Cond(child->brother->brother, lt, lf); /* 再处理 E2 */
    }

    /*====================================================
     * 4. 逻辑或   E1 OR E2
     *     若 E1 真 → 直接 lt
     *     若 E1 假 → 跳到 Lmid，继续判断 E2
     *===================================================*/
    else if (child->brother != NULL &&
             !strcmp(child->brother->index, "OR")) {

        Operand Lmid = new_label();          /* E1 假时的标签 */

        translate_Cond(child, lt, Lmid);     /* 先处理 E1 */

        /* LABEL Lmid */
        InterCode lab_mid = malloc(sizeof *lab_mid);
        lab_mid->kind = ILABEL; lab_mid->u.ulabel.op = Lmid;
        insert_intercode(lab_mid);

        translate_Cond(child->brother->brother, lt, lf); /* 再处理 E2 */
    }

    /*====================================================
     * 5. 其它表达式：视为 “Exp != 0”
     *===================================================*/
    else {
        Operand t1 = new_temp();             /* 计算 Exp 结果 */

        translate_Exp(now, t1);              /* 结果存 t1 */

        /* 生成 IF t1 != #0 GOTO lt */
        Operand rel = malloc(sizeof *rel);   /* “!=” */
        rel->kind = RELOP; rel->u_int = 1;   /* 1 表示 != */

        Operand zero = malloc(sizeof *zero); /* 常量 0 */
        zero->kind = CONSTANT; zero->u_int = 0;

        InterCode if_ic = malloc(sizeof *if_ic);
        if_ic->kind      = IF;
        if_ic->u.uif.x   = t1;
        if_ic->u.uif.relop = rel;
        if_ic->u.uif.y   = zero;
        if_ic->u.uif.z   = lt;
        insert_intercode(if_ic);

        /* GOTO lf */
        InterCode go_ic = malloc(sizeof *go_ic);
        go_ic->kind        = GOTO;
        go_ic->u.ulabel.op = lf;
        insert_intercode(go_ic);
    }
}


void translate_Dec(struct Node* now){
    //Dec -> VarDec | VarDec ASSIGNOP Exp
    // printf("Dec\n");
    if (interim_is_error) return;
    struct Node* vardec = now -> child;
    struct Node* fir_bro = vardec -> brother;
    if (fir_bro == NULL) {
        Operand temp1 = new_temp();
        translate_VarDec(vardec, temp1);
    } else{
        Operand rem1 = new_temp();
        Operand rem2 = new_temp();
        InterCode func_in = (InterCode)malloc(sizeof(struct InterCode_));
        translate_VarDec(vardec, rem1);
        translate_Exp(fir_bro -> brother, rem2);
        func_in -> kind = ASSIGN;
        func_in -> u.uassign.op1 = rem1;
        func_in -> u.uassign.op2 = rem2;
        insert_intercode(func_in);
    }
}

/*********************************************************************
 * translate_VarDec
 * ------------------------------------------------------------------
 * 产生式： VarDec → ID
 *               | VarDec LB INT RB          （仅支持一维，且 INT 为常量）
 *
 * 目标：
 *   1) 若 place 非 NULL，则返回代表该变量的 Operand
 *      - 普通标量 / 指针      → VARIABLE
 *      - 非标量（数组/结构体）→ 仍返回 VARIABLE，但会额外生成 DEC
 *   2) 对需要连续内存的变量（结构体 / 数组）输出
 *        DEC  tID  <size>
 *
 * 参数：
 *   now   —— 指向 VarDec 语法结点
 *   place —— 用来回写结果位置的 Operand（允许 NULL，表示调用者不关心）
 *
 * 错误处理：
 *   - 检测到多维数组（child->child 为 ID）即设置 interim_is_error
 *********************************************************************/
void translate_VarDec(struct Node* now,Operand place){
    /* VarDec → ID ---------------------------------------------*/
    if (interim_is_error) return;
    if (now -> child -> brother == NULL) {
        TABLE find_it = search(now -> child -> char_name); /* 查符号表 */
        FieldList find_field = find_it -> field;

        /* ------- 基本类型：只需告知 place ----------*/
        if (find_field -> type -> kind == BASIC) {
            if (place == NULL) return;            /* 调用者无需回写 */
            place -> kind  = VARIABLE;            /* 普通变量 */
            place -> u_int = find_it -> variable; /* 变量序号/偏移 */
            place -> u_char = now->child -> char_name;
            return;
        }
        /* ------- 结构体变量：需要申请连续空间 DEC --------*/
        else if(find_field -> type -> kind == STRUCTURE) {
            if (place == NULL) return;
            place -> kind  = VARIABLE;
            place -> u_int = find_it -> variable;
            place -> u_char = now->child -> char_name;

            /* emit  DEC tID size  */
            InterCode func_in = (InterCode)malloc(sizeof(struct InterCode_));
            func_in -> kind = DEC;
            func_in -> u.udec.op   = place;
            func_in -> u.udec.size = get_size(find_field->type); /* 字节数 */
            insert_intercode(func_in);
            return;
        }
    }
    /* VarDec → VarDec LB INT RB  （仅支持一维数组）-------------*/
    else {
        /* 若 child->child 为 ID，说明出现了多维数组，直接报错 */
        if (!strcmp(now -> child -> child -> index, "ID")) {
            interim_is_error = 1;
            printf("Cannot translate: Code contains variables of error array type.\n");
            return;
        }

        /* 一维数组：place 作为首地址变量，附带 DEC */
        if (place == NULL) return;
        place -> kind  = VARIABLE;
        place -> u_char = now -> child -> char_name;

        /* 数组首元素类型在“最内层 ID”处 */
        TABLE find_it = search(now -> child -> child -> char_name);
        place -> u_int = find_it -> variable;

        /* emit  DEC tID total_bytes */
        InterCode func_in = (InterCode)malloc(sizeof(struct InterCode_));
        func_in -> kind = DEC;
        func_in -> u.udec.op   = place;
        func_in -> u.udec.size = get_size(find_it -> field -> type);
        insert_intercode(func_in);
        return;
    }
}


void translate_Args(struct Node* now,InterCode here){
    //Args -> Exp COMMA Args| Exp
    // printf("Args\n");
    if (interim_is_error) return;
    struct Node* exp = now -> child;
    Operand temp1 = new_temp();
    temp1 -> kind = FROM_ARG;
    translate_Exp(exp, temp1);
    if (temp1 -> kind != CONSTANT && temp1 -> kind != ADDRESS && temp1 -> kind != WADDRESS) {
        TABLE find_id = search(temp1 -> u_char);
        if (find_id == NULL) temp1 -> kind = VARIABLE;
        else if (find_id -> field -> type -> kind != BASIC) temp1 -> kind = ADDRESS;
        else temp1->kind = VARIABLE;
    }

    InterCode code1_in = (InterCode)malloc(sizeof(struct InterCode_));
    code1_in -> kind = ARG;
    code1_in -> u.ulabel.op = temp1;
    if (here == NULL) {
        code1_in -> next = NULL;
        code1_in -> before = NULL;
    } else{
        here -> next = code1_in;
        code1_in -> before = here;
    }
    exp = exp -> brother;
    if (exp != NULL) translate_Args(exp -> brother, code1_in);
    if (here == NULL) {
        InterCode temp = code1_in;
        while (temp -> next != NULL) temp = temp -> next;
        while (temp != NULL) {
            InterCode rem = temp;
            temp = temp -> before;
            insert_intercode(rem);
        }
    }
}

void translate_Specifier(struct Node* now){
    //Specifier -> TYPE| StructSpecifier
    // printf("Specifier\n");
    if (interim_is_error) return;
    if (!strcmp(now -> child -> index, "StructSpecifier")) {
        translate_StructSpecifier(now -> child);
    }
}

void translate_StructSpecifier(struct Node* now){
    //StructSpecifier -> STRUCT OptTag LC DefList RC| STRUCT Tag
    // printf("StructSpecifier\n");
    if (interim_is_error) return;
    struct Node* child = now -> child;
    struct Node* fir_bro = child -> brother;
    struct Node* sec_bro = fir_bro -> brother;
    if (sec_bro == NULL) {
        Operand temp1 = (Operand)malloc(sizeof(struct Operand_));
        TABLE find_it = search(fir_bro -> child -> char_name);
        temp1 -> kind = VARIABLE;
        temp1 -> u_int = find_it -> variable;
        temp1 -> u_char = fir_bro -> child -> char_name;
        InterCode func_in = (InterCode)malloc(sizeof(struct InterCode_));
        func_in -> kind = DEC;
        func_in -> u.udec.op = temp1;
        func_in -> u.udec.size = get_size(find_it -> field -> type);
        insert_intercode(func_in);
        return;
    }
}