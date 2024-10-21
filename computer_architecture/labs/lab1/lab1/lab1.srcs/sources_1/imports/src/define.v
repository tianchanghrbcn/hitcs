// R型指令功能码
`define FUNCT_ADD  6'b100000  // 加法
`define FUNCT_SUB  6'b100010  // 减法
`define FUNCT_AND  6'b100100  // 按位与
`define FUNCT_OR   6'b100101  // 按位或
`define FUNCT_XOR  6'b100110  // 异或
`define FUNCT_MOVZ 6'b001010  // 条件移动
`define FUNCT_SLL  6'b000000  // 逻辑左移

// R型指令操作码
`define OP_Rtype   6'b000000

// I型指令操作码
`define OP_SW      6'b101011  // 存储字
`define OP_LW      6'b100011  // 加载字
`define OP_CMP     6'b111110

// J型指令操作码
`define OP_J       6'b000010  // 跳转

// B型指令操作码
`define OP_BBT     6'b111111  // BBT条件分支跳转  
