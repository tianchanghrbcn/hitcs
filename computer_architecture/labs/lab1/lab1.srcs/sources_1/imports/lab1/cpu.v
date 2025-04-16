module cpu(
    input           clk,                // Clock signal
    input           resetn,             // Active-low reset signal

    output          inst_sram_en,       // Instruction memory enable
    output[31:0]    inst_sram_addr,     // Instruction memory address
    input[31:0]     inst_sram_rdata,    // Instruction memory read data

    output          data_sram_en,       // Data memory enable
    output[3:0]     data_sram_wen,      // Data memory write enable
    output[31:0]    data_sram_addr,     // Data memory address
    output[31:0]    data_sram_wdata,    // Data memory write data
    input[31:0]     data_sram_rdata,    // Data memory read data

    // For testing environment CPU correctness check
    output[31:0]    debug_wb_pc,        // Current PC of the executing instruction
    output          debug_wb_rf_wen,    // Current register file write enable signal
    output[4:0]     debug_wb_rf_wnum,   // Current register file write-back register address
    output[31:0]    debug_wb_rf_wdata   // Current data to write back to the register file
);

    // ===== Global Definitions =====
    reg[31:0] program_counter;
    reg[31:0] instruction_register;

    initial begin
        program_counter = 0;
        instruction_register = 0;
    end
    // ===============================

    // ===== IF/ID Stage =====
    reg[31:0] if_id_pc;
    wire[31:0] if_id_instruction;
    reg[31:0] debug_if_id_pc;       // Debugging purpose
    // ==========================

    // ===== ID/EX Stage =====
    reg[31:0] id_ex_pc;
    reg[31:0] id_ex_instruction;
    reg[31:0] id_ex_reg1_data;
    reg[31:0] id_ex_reg2_data;
    reg[31:0] id_ex_immediate;

    reg[31:0] debug_id_ex_pc;       // Debugging purpose
    // ==========================

    // ===== EX/MEM Stage =====
    reg[31:0] ex_mem_result;
    reg[31:0] ex_mem_reg2_data;
    reg[31:0] ex_mem_instruction;
    reg       ex_mem_jump_flag;

    reg[31:0] debug_ex_mem_pc;      // Debugging purpose
    // ==========================

    // ===== MEM/WB Stage =====
    reg[31:0]  mem_wb_result;
    reg[31:0]  mem_wb_instruction;
    wire[31:0] mem_wb_memory_data;

    reg[31:0] debug_mem_wb_pc;      // Debugging purpose
    // ==========================

    // ===== Hazard Detection =====
    wire stall_signal;
    wire forward_ex_mem_rs1;
    wire forward_mem_wb_rs1;
    wire forward_mem_wb_mm1;
    wire forward_ex_mem_rs2;
    wire forward_mem_wb_rs2;
    wire forward_mem_wb_mm2;
    // ==========================

    // ===== IF Stage =====
    assign inst_sram_en = !stall_signal && resetn;
    assign inst_sram_addr = program_counter;

    wire[31:0] next_pc;
    wire[31:0] pc_mux_result;

    data_mux if_stage_mux(
        .input0        (program_counter + 4),
        .input1        (ex_mem_result),
        .select_line   (ex_mem_jump_flag),
        .output_data   (pc_mux_result)
    );

    assign next_pc = pc_mux_result;
    assign if_id_instruction = inst_sram_rdata;

    always @(posedge clk) begin
        if (!stall_signal) begin
            program_counter <= {32{resetn}} & next_pc;
            if_id_pc <= {32{resetn}} & next_pc;

            debug_if_id_pc <= {32{resetn}} & program_counter;
        end
    end
    // ==========================

    // ===== ID Stage =====
    detector hazard_detector(
        .current_instruction(if_id_instruction),
        .previous_instruction(id_ex_instruction),
        .two_before_instruction(ex_mem_instruction),
        .three_before_instruction(mem_wb_instruction),
        .stall_signal(stall_signal),
        .forward_ex_mem_rs1(forward_ex_mem_rs1),
        .forward_mem_wb_rs1(forward_mem_wb_rs1),
        .forward_mem_wb_mm1(forward_mem_wb_mm1),
        .forward_ex_mem_rs2(forward_ex_mem_rs2),
        .forward_mem_wb_rs2(forward_mem_wb_rs2),
        .forward_mem_wb_mm2(forward_mem_wb_mm2)
    );

    wire regfile_write_enable;
    wire[5:0] regfile_write_address;
    wire[31:0] regfile_write_data;

    wire[31:0] regfile_read_data1;
    wire[31:0] regfile_read_data2;

    register_file reg_file(
        .clock(clk),
        .write_enable(regfile_write_enable),
        .read_address1(if_id_instruction[25:21]),
        .read_address2(if_id_instruction[20:16]),
        .write_address(regfile_write_address),
        .write_data(regfile_write_data),
        .read_data1(regfile_read_data1),
        .read_data2(regfile_read_data2)
    );

    wire[31:0] extended_immediate;
    sign_extend imm_extender(
        .input_data(if_id_instruction[15:0]),
        .output_data(extended_immediate)
    );

    always @(posedge clk) begin
        id_ex_pc <= {32{resetn}} & if_id_pc;
        debug_id_ex_pc <= {32{resetn}} & debug_if_id_pc;

        if (stall_signal) begin
            id_ex_instruction <= 0;
            id_ex_reg1_data <= 0;
            id_ex_reg2_data <= 0;
            id_ex_immediate <= 0;
        end else begin
            id_ex_reg1_data <= {32{resetn}} & regfile_read_data1;
            id_ex_reg2_data <= {32{resetn}} & regfile_read_data2;
            id_ex_instruction <= {32{resetn}} & if_id_instruction;
            id_ex_immediate <= {32{resetn}} & extended_immediate;
        end
    end
    // ==========================

    // ===== EX Stage =====
    wire[31:0] alu_operand_a, selected_operand_a;
    wire[31:0] alu_operand_b, selected_operand_b;

    assign selected_operand_a = 
        forward_ex_mem_rs1 ? ex_mem_result :
        forward_mem_wb_rs1 ? mem_wb_result :
        forward_mem_wb_mm1 ? mem_wb_memory_data :
        id_ex_reg1_data;

    assign selected_operand_b = 
        forward_ex_mem_rs2 ? ex_mem_result :
        forward_mem_wb_rs2 ? mem_wb_result :
        forward_mem_wb_mm2 ? mem_wb_memory_data :
        id_ex_reg2_data;

    wire alu_a_select, alu_b_select;

    data_mux ex_stage_mux1(
        .input0(id_ex_pc),
        .input1(selected_operand_a),
        .select_line(alu_a_select),
        .output_data(alu_operand_a)
    );

    assign alu_a_select =
        (id_ex_instruction[31:26] == 6'b000000) | // Arithmetic instructions need R1
        (id_ex_instruction[31:26] == 6'b101011) | // Store instructions need R1
        (id_ex_instruction[31:26] == 6'b100011) | // Load instructions need R1
        (id_ex_instruction[31:26] == 6'b111110) | // Comparison instructions need R1
        (id_ex_instruction[31:26] == 6'b111111);  // Conditional instructions need R1

    data_mux ex_stage_mux2(
        .input0(id_ex_immediate),
        .input1(selected_operand_b),
        .select_line(alu_b_select),
        .output_data(alu_operand_b)
    );

    assign alu_b_select =
        (id_ex_instruction[31:26] == 6'b000000) | // Arithmetic instructions need R2
        (id_ex_instruction[31:26] == 6'b111110);  // Comparison instructions need R2

    wire[31:0] alu_result;
    wire[5:0] alu_operation = 
        ({6{id_ex_instruction[31:26] == 6'b000000}} & id_ex_instruction[5:0]) | // Arithmetic operation code
        ({6{id_ex_instruction[31:26] == 6'b111110}} & 6'b111110) |            // Comparison operation code
        ({6{id_ex_instruction[31:26] == 6'b101011}} & 6'b100000) |            // Store instruction as addition
        ({6{id_ex_instruction[31:26] == 6'b100011}} & 6'b100000);             // Load instruction as addition

    my_alu ex_alu(
        .InputA(alu_operand_a),
        .InputB(alu_operand_b),
        .Result(alu_result),
        .ShiftAmount(id_ex_instruction[10:6]),
        .Operation(alu_operation)
    );

    wire jump_condition_met;
    jump_control jump_check(
        .reg1(selected_operand_a),
        .reg2(selected_operand_b),
        .instruction(id_ex_instruction),
        .execute_jump(jump_condition_met)
    );

    always @(posedge clk) begin
        ex_mem_reg2_data <= {32{resetn}} & selected_operand_b;
        ex_mem_instruction <= {32{resetn}} & (
            {32{!(id_ex_instruction[31:26] == 6'b000000 && id_ex_instruction[5:0] == 6'b001010 && selected_operand_b != 0)}}
        ) & id_ex_instruction;
        ex_mem_result <= {32{resetn}} & (
            ({32{id_ex_instruction[31:26] == 6'b000000}} & alu_result) |  // Arithmetic instructions use ALU
            ({32{id_ex_instruction[31:26] == 6'b100011}} & alu_result) |  // Load instructions use ALU
            ({32{id_ex_instruction[31:26] == 6'b101011}} & alu_result) |  // Store instructions use ALU
            ({32{id_ex_instruction[31:26] == 6'b111110}} & alu_result) |  // Comparison instructions use ALU
            ({32{id_ex_instruction[31:26] == 6'b000010}} & {id_ex_pc[31:28], id_ex_instruction[25:0], 2'b00}) // Unconditional jump
        );
        ex_mem_jump_flag <= resetn & jump_condition_met;
        debug_ex_mem_pc <= {32{resetn}} & debug_id_ex_pc;
    end
    // ==========================

    // ===== MEM Stage =====
    assign data_sram_addr  = ex_mem_result;
    assign data_sram_wdata = ex_mem_reg2_data;
    assign data_sram_wen   = ex_mem_instruction[31:26] == 6'b101011; // Only store instructions write
    assign data_sram_en    = 
        (ex_mem_instruction[31:26] == 6'b100011) | // Load instructions access memory
        (ex_mem_instruction[31:26] == 6'b101011);  // Store instructions access memory

    assign mem_wb_memory_data = {32{resetn}} & data_sram_rdata;

    always @(posedge clk) begin
        mem_wb_instruction <= {32{resetn}} & ex_mem_instruction;
        mem_wb_result <= {32{resetn}} & ex_mem_result;

        debug_mem_wb_pc <= {32{resetn}} & debug_ex_mem_pc;
    end
    // ==========================

    // ===== WB Stage =====
    wire wb_mux_select;

    data_mux wb_stage_mux(
        .input0(mem_wb_result),
        .input1(mem_wb_memory_data),
        .select_line(wb_mux_select),
        .output_data(regfile_write_data)
    );

    assign regfile_write_address =
        ({32{mem_wb_instruction[31:26] == 6'b100011}} & mem_wb_instruction[20:16]) | // Load writes back to reg[20:16]
        ({32{mem_wb_instruction[31:26] == 6'b000000}} & mem_wb_instruction[15:11]) | // Arithmetic writes back to reg[15:11]
        ({32{mem_wb_instruction[31:26] == 6'b111110}} & mem_wb_instruction[15:11]);  // Comparison writes back to reg[15:11]

    assign wb_mux_select =
        (mem_wb_instruction[31:26] == 6'b100011); // Only load instructions use memory data

    assign regfile_write_enable =
        ((mem_wb_instruction[31:26] == 6'b000000) | // Arithmetic writes back
         (mem_wb_instruction[31:26] == 6'b100011) | // Load writes back
         (mem_wb_instruction[31:26] == 6'b111110)) & // Comparison writes back
        (regfile_write_address != 0); // Cannot write to r0

    assign debug_wb_pc = debug_mem_wb_pc;
    assign debug_wb_rf_wen = regfile_write_enable;
    assign debug_wb_rf_wnum = regfile_write_address;
    assign debug_wb_rf_wdata = regfile_write_data;

endmodule
