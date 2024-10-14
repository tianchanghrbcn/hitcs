module inst_decoder(
    input [31:0] inst,  // ????
    output wen,         // ???????
    output [4:0] waddr, // ????????
    output rden1,       // ??????1
    output [4:0] raddr1,// ?????1??
    output rden2,       // ??????2
    output [4:0] raddr2,// ?????2??
    output alu_en,      // ALU????
    output [4:0] alu_card, // ALU???
    output mem_rd,      // ??????
    output mem_wr,      // ??????
    output jmp,         // ????
    output invalid      // ??????
);

    // ?????????
    assign wen = (inst[31:26] == 6'b000000 && (inst[5:0] == 6'b100000 || inst[5:0] == 6'b100010 || 
                    inst[5:0] == 6'b100100 || inst[5:0] == 6'b100101 || inst[5:0] == 6'b100110 || 
                    inst[5:0] == 6'b000000)) || // SLL
                 (inst[31:26] == 6'b100011); // LW???????

    // ??????? (R??LW)
    assign waddr = (inst[31:26] == 6'b000000) ? inst[15:11] : 
                   (inst[31:26] == 6'b100011) ? inst[20:16] : 5'b00000;

    // ????1
    assign rden1 = (inst[31:26] == 6'b000000 || inst[31:26] == 6'b100011 || inst[31:26] == 6'b101011);
    assign raddr1 = inst[25:21];

    // ????2
    assign rden2 = (inst[31:26] == 6'b000000 || inst[31:26] == 6'b101011);
    assign raddr2 = inst[20:16];

    // ALU??
    assign alu_en = (inst[31:26] == 6'b000000); // R???

    // ALU??? (R????ADD, SUB, AND, OR, XOR, SLL)
    assign alu_card = (inst[5:0] == 6'b100000) ? 5'b00001 : // ADD
                      (inst[5:0] == 6'b100010) ? 5'b00011 : // SUB
                      (inst[5:0] == 6'b100100) ? 5'b01100 : // AND
                      (inst[5:0] == 6'b100101) ? 5'b01011 : // OR
                      (inst[5:0] == 6'b100110) ? 5'b01110 : // XOR
                      (inst[5:0] == 6'b000000) ? 5'b10001 : // SLL
                      5'b00000;

    // ???? (LW??)
    assign mem_rd = (inst[31:26] == 6'b100011);

    // ???? (SW??)
    assign mem_wr = (inst[31:26] == 6'b101011);

    // ???? (J??)
    assign jmp = (inst[31:26] == 6'b000010);

    // ???????R??LW?SW?J????????
    assign invalid = !((inst[31:26] == 6'b000000 && (inst[5:0] == 6'b100000 || inst[5:0] == 6'b100010 || 
                        inst[5:0] == 6'b100100 || inst[5:0] == 6'b100101 || inst[5:0] == 6'b100110)) || 
                      (inst[31:26] == 6'b100011) || // LW
                      (inst[31:26] == 6'b101011) || // SW
                      (inst[31:26] == 6'b000010));  // J?

endmodule