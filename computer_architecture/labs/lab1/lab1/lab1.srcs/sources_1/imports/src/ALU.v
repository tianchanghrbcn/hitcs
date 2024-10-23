`include "define.v" 

module ALU(
    input [5:0] opcode,
    input [5:0] alu_op,   
    input [31:0] input_data1,
    input [31:0] input_data2,
    input [4:0] shamt,    
    input [31:0] IR,      
    
    output wire [31:0] result,
    output wire wb_en
);

    wire [31:0] temp;
    wire [31:0] cmp_result;
    wire signed [31:0] signed_data1 = input_data1;
    wire signed [31:0] signed_data2 = input_data2;
    
    wire [4:0] write_reg = (opcode == `OP_LW) ? IR[20:16] : IR[15:11]; 

    assign temp = (alu_op == `OP_J) ? input_data2 << 2 : 32'b0; 

    assign cmp_result[0] = (input_data1 == input_data2) ? 1'b1 : 1'b0;
    assign cmp_result[1] = (signed_data1 < signed_data2) ? 1'b1 : 1'b0;
    assign cmp_result[2] = (input_data1 < input_data2) ? 1'b1 : 1'b0;
    assign cmp_result[3] = (signed_data1 <= signed_data2) ? 1'b1 : 1'b0;
    assign cmp_result[4] = (input_data1 <= input_data2) ? 1'b1 : 1'b0;
    assign cmp_result[9:5] = ~cmp_result[4:0];
    assign cmp_result[31:10] = 22'b0;

    assign result = ({32{alu_op == `FUNCT_ADD && opcode == `OP_Rtype}} & (input_data1 + input_data2)) |   // ADD
                    ({32{alu_op == `FUNCT_SUB && opcode == `OP_Rtype}} & (input_data1 - input_data2)) |   // SUB
                    ({32{alu_op == `FUNCT_AND && opcode == `OP_Rtype}} & (input_data1 & input_data2)) |   // AND
                    ({32{alu_op == `FUNCT_OR && opcode == `OP_Rtype}} & (input_data1 | input_data2)) |     // OR
                    ({32{alu_op == `FUNCT_XOR && opcode == `OP_Rtype}} & (input_data1 ^ input_data2)) |   // XOR
                    ({32{alu_op == `FUNCT_SLL && opcode == `OP_Rtype}} & (input_data2 << shamt)) |         // SLL
                    ({32{alu_op == `FUNCT_MOVZ && opcode == `OP_Rtype}} & (input_data2 == 0 ? input_data1 : 32'h00000000)) | // MOVZ
                    ({32{opcode == `OP_LW}} & (input_data1 + input_data2)) |   // LW
                    ({32{opcode == `OP_SW}} & (input_data1 + input_data2)) |   // SW
                    ({32{opcode == `OP_BBT}} & ((input_data2 << 2) + input_data1)) | // BBT:sign_extend(offset) << 2 + NPC
                    ({32{alu_op == 6'b110000 && opcode == `OP_J}} & {input_data1[31:26], temp[25:0]}) | // JMP
                    ({32{opcode == `OP_CMP && alu_op == 6'b000000}} & cmp_result); // CMP

    assign wb_en = (write_reg != 5'd0) && 
                          ((opcode == `OP_Rtype && alu_op != `FUNCT_MOVZ) ||  
                          (opcode == `OP_LW) ||  
                          (opcode == `OP_CMP) ||  
                          (opcode == `OP_Rtype && alu_op == `FUNCT_MOVZ && input_data2 == 0));  

endmodule