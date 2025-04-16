module detector (
    input [31:0] current_instruction,    // Current instruction, IF/ID
    input [31:0] previous_instruction,   // Previous instruction, ID/EX
    input [31:0] two_before_instruction, // Two instructions before, EX/MEM
    input [31:0] three_before_instruction, // Three instructions before, MEM/WB
    output stall_signal,
    output forward_ex_mem_rs1,
    output forward_mem_wb_rs1,
    output forward_mem_wb_mm1,
    output forward_ex_mem_rs2,
    output forward_mem_wb_rs2,
    output forward_mem_wb_mm2
);
    // Stall Signal
    assign stall_signal =
        (previous_instruction[31:26] == 6'b100011 && (current_instruction[31:26] == 6'b000000 || current_instruction[31:26] == 6'b111110) && previous_instruction[20:16] == current_instruction[25:21]) |
        (previous_instruction[31:26] == 6'b100011 && (current_instruction[31:26] == 6'b000000 || current_instruction[31:26] == 6'b111110) && previous_instruction[20:16] == current_instruction[20:16]) |
        (previous_instruction[31:26] == 6'b100011 && previous_instruction[20:16] == current_instruction[25:21]);

    // Forward EX/MEM.RS to ID/EX.R1
    assign forward_ex_mem_rs1 = (previous_instruction[25:21] != 5'b00000) &&
        (two_before_instruction[31:26] == 6'b000000 && previous_instruction[25:21] == two_before_instruction[15:11]) | // Arithmetic instruction
        (two_before_instruction[31:26] == 6'b111110 && previous_instruction[25:21] == two_before_instruction[15:11]);  // Comparison instruction

    // Forward EX/MEM.RS to ID/EX.R2
    assign forward_ex_mem_rs2 = (previous_instruction[20:16] != 5'b00000) &&
        (two_before_instruction[31:26] == 6'b000000 && previous_instruction[20:16] == two_before_instruction[15:11]) | // Arithmetic instruction
        (two_before_instruction[31:26] == 6'b111110 && previous_instruction[20:16] == two_before_instruction[15:11]);  // Comparison instruction

    // Forward MEM/WB.RS to ID/EX.R1
    assign forward_mem_wb_rs1 = (previous_instruction[25:21] != 5'b00000) &&
        (three_before_instruction[31:26] == 6'b000000 && previous_instruction[25:21] == three_before_instruction[15:11]) | // Arithmetic instruction
        (three_before_instruction[31:26] == 6'b111110 && previous_instruction[25:21] == three_before_instruction[15:11]);  // Comparison instruction

    // Forward MEM/WB.RS to ID/EX.R2
    assign forward_mem_wb_rs2 = (previous_instruction[20:16] != 5'b00000) &&
        (three_before_instruction[31:26] == 6'b000000 && previous_instruction[20:16] == three_before_instruction[15:11]) | // Arithmetic instruction
        (three_before_instruction[31:26] == 6'b111110 && previous_instruction[20:16] == three_before_instruction[15:11]);  // Comparison instruction

    // Forward MEM/WB.MM to ID/EX.R1
    assign forward_mem_wb_mm1 = (previous_instruction[25:21] != 5'b00000) &&
        (three_before_instruction[31:26] == 6'b100011 && previous_instruction[25:21] == three_before_instruction[20:16]);  // Load instruction

    // Forward MEM/WB.MM to ID/EX.R2
    assign forward_mem_wb_mm2 = (previous_instruction[20:16] != 5'b00000) &&
        (three_before_instruction[31:26] == 6'b100011 && previous_instruction[20:16] == three_before_instruction[20:16]);  // Load instruction

endmodule
