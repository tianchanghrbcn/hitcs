`timescale 1ns / 1ps

module cpu(
    input           clk,                // Clock signal
    input           resetn,             // Active low reset signal

    output          inst_sram_en,       // Instruction SRAM enable
    output[31:0]    inst_sram_addr,     // Instruction SRAM read address
    input[31:0]     inst_sram_rdata,    // Instruction SRAM read data

    output          data_sram_en,       // Data SRAM enable
    output[3:0]     data_sram_wen,      // Data SRAM write enable
    output[31:0]    data_sram_addr,     // Data SRAM address
    output[31:0]    data_sram_wdata,    // Data SRAM write data
    input[31:0]     data_sram_rdata,    // Data SRAM read data

    // Debug signals for verification
    output[31:0]    debug_wb_pc,        // Program counter of the current instruction
    output          debug_wb_rf_wen,    // Register file write enable
    output[4:0]     debug_wb_rf_wnum,   // Register file write number
    output[31:0]    debug_wb_rf_wdata   // Data to write back to the register file
);

    // ========== IF_ID =============
    reg[31:0] ifid_pc;         // Current program counter value
    wire[31:0] ifid_instr;     // Instruction fetched
    wire[31:0] ifid_next_pc;   // Address of the next instruction
    wire[31:0] ifid_jump_addr; // Target address for jump instructions

    // ========== ID_EX =============
    reg[31:0] idex_next_pc;    // Address of the next instruction
    reg[31:0] idex_instr;      // Current instruction being processed
    reg[31:0] idex_src1;       // Source operand 1
    reg[31:0] idex_src2;       // Source operand 2
    reg[31:0] idex_imm;        // Immediate value in the instruction
    reg[31:0] idex_jump_addr;  // Target address for jump instructions
    reg[31:0] idex_pc;         // Current program counter value

    // ========== EX_MEM ============
    reg[31:0] exmem_result;    // Execution result
    reg[31:0] exmem_dest_reg;  // Destination register address
    reg[31:0] exmem_instr;     // Current instruction content
    reg[31:0] exmem_pc;        // Current program counter value

    // ========== MEM_WB ============
    reg[31:0] memwb_result;    // Result from memory or ALU
    reg[31:0] memwb_instr;     // Current instruction content
    wire[31:0] memwb_mem_data; // Data read from memory
    reg[31:0] memwb_pc;        // Current program counter value

    // ========== Pipeline Control Signals ===========
    wire pipeline_stall; // Stall signal for pipeline
    wire forward_exmem_src1; // Forward EX_MEM result to source 1
    wire forward_memwb_mem_src1; // Forward MEM_WB memory data to source 1
    wire forward_memwb_result_src1; // Forward MEM_WB result to source 1
    wire forward_exmem_src2; // Forward EX_MEM result to source 2
    wire forward_memwb_mem_src2; // Forward MEM_WB memory data to source 2
    wire forward_memwb_result_src2; // Forward MEM_WB result to source 2
    wire jump_check; // Indicates a jump condition
    wire[31:0] jump_target_addr; // Target address for the jump
    wire is_jump_instr; // Whether the current instruction is a jump
    wire execute_jump; // Whether to execute the jump
    // =================================================

    initial begin
        ifid_pc = -4;
    end

    // ============ IF ==============
    wire[31:0] next_pc;

    assign inst_sram_en   = !pipeline_stall && resetn;
    assign inst_sram_addr = next_pc;

    my_branch_predictor my_branch_predictor_inst (
        .clock(clk),
        .reset(rst),
        .branch_condition_detect(jump_check),
        .branch_instruction(is_jump_instr),
        .branch_execution_success(execute_jump),
        .branch_target_address(jump_target_addr),
        .instruction_id_stage(ifid_instr),
        .instruction_ex_stage(idex_instr),
        .pc_id_stage(ifid_pc),
        .pc_ex_stage(idex_pc),
        .next_pc(next_pc)
    );

    assign ifid_instr = {32{resetn}} & inst_sram_rdata;
    assign ifid_jump_addr = {32{resetn}} & next_pc;
    assign ifid_next_pc = {32{resetn}} & (ifid_pc + 4);

    always @(posedge clk) begin
        if (!pipeline_stall) begin
            ifid_pc <= resetn ? next_pc : -4;
        end
    end

    // ============ ID ==============

    detector detector_inst (
        .current_instruction(ifid_instr),
        .previous_instruction(idex_instr),
        .two_before_instruction(exmem_instr),
        .three_before_instruction(memwb_instr),
        .stall_signal(pipeline_stall),
        .forward_ex_mem_rs1(forward_exmem_src1),
        .forward_mem_wb_rs1(forward_memwb_result_src1),
        .forward_mem_wb_mm1(forward_memwb_mem_src1),
        .forward_ex_mem_rs2(forward_exmem_src2),
        .forward_mem_wb_rs2(forward_memwb_result_src2),
        .forward_mem_wb_mm2(forward_memwb_mem_src2)
    );

    wire          regfile_we;   // Register file write enable
    wire[ 5:0] regfile_waddr;   // Register file write address
    wire[31:0] regfile_wdata;   // Register file write data

    wire[31:0] regfile_rdata1;
    wire[31:0] regfile_rdata2;

    register_file regfile_inst (
        .clock(clk),
        .write_enable(regfile_we),
        .read_address1(ifid_instr[25:21]),
        .read_address2(ifid_instr[20:16]),
        .write_address(regfile_waddr),
        .write_data(regfile_wdata),
        .read_data1(regfile_rdata1),
        .read_data2(regfile_rdata2)
    );

    wire[31:0] extended_imm;
    sign_extend sign_extend_inst (
        .input_data(ifid_instr[15:0]), // 16-bit immediate value
        .output_data(extended_imm)
    );

    always @(posedge clk) begin
        idex_next_pc <= {32{resetn}} & ifid_next_pc;
        idex_pc <= {32{resetn}} & ifid_pc;
        if (pipeline_stall) begin
            idex_instr <= 0;
            idex_src1 <= 0;
            idex_src2 <= 0;
            idex_jump_addr <= 0;
            idex_imm <= 0;
        end else begin
            idex_src1 <= {32{resetn & !jump_check}} & regfile_rdata1;
            idex_src2 <= {32{resetn & !jump_check}} & regfile_rdata2;
            idex_instr <= {32{resetn & !jump_check}} & ifid_instr;
            idex_jump_addr <= {32{resetn & !jump_check}} & ifid_jump_addr;
            idex_imm <= {32{resetn & !jump_check}} & extended_imm;
        end
    end

    // ===============================

    // ============ EX ==============
    wire[31:0] alu_input_a, forward_src1;
    wire[31:0] alu_input_b, forward_src2;

    assign forward_src1 = 
        forward_exmem_src1 ? exmem_result :
        forward_memwb_result_src1 ? memwb_result :
        forward_memwb_mem_src1 ? memwb_mem_data :
        idex_src1;

    assign forward_src2 = 
        forward_exmem_src2 ? exmem_result :
        forward_memwb_result_src2 ? memwb_result :
        forward_memwb_mem_src2 ? memwb_mem_data :
        idex_src2;

    wire mux_select_a, mux_select_b;

    data_mux ex_mux_a (
        .input0(idex_next_pc),
        .input1(forward_src1),
        .select_line(mux_select_a),
        .output_data(alu_input_a)
    ); // Select between PC and source 1

    assign mux_select_a =
        (idex_instr[31:26] == 6'b000000) | // Arithmetic instruction uses source 1
        (idex_instr[31:26] == 6'b101011) | // Store instruction uses source 1
        (idex_instr[31:26] == 6'b100011) | // Load instruction uses source 1
        (idex_instr[31:26] == 6'b111110);

    data_mux ex_mux_b (
        .input0(idex_imm),
        .input1(forward_src2),
        .select_line(mux_select_b),
        .output_data(alu_input_b)
    ); // Select between source 2 and immediate

    assign mux_select_b =
        (idex_instr[31:26] == 6'b000000) | // Arithmetic instruction uses source 2
        (idex_instr[31:26] == 6'b111110);  // Compare instruction uses source 2

    wire[31:0] alu_result;
    wire[ 5:0] alu_op = 
        ({6{idex_instr[31:26] == 6'b000000}} & idex_instr[5:0]) | // Arithmetic opcode from last 6 bits
        ({6{idex_instr[31:26] == 6'b111110}} & 6'b111110) |      // Compare instruction
        ({6{idex_instr[31:26] == 6'b101011}} & 6'b100000) |      // Store instruction
        ({6{idex_instr[31:26] == 6'b100011}} & 6'b100000);       // Load instruction

    my_alu alu_inst (
        .InputA(alu_input_a),
        .InputB(alu_input_b),
        .Operation(alu_op),
        .ShiftAmount(idex_instr[10:6]),
        .Result(alu_result)
    );

    jump_control jump_control_inst (
        .reg1(forward_src1),
        .reg2(forward_src2),
        .instruction(idex_instr),
        .is_jump_condition(is_jump_instr),
        .execute_jump(execute_jump)
    );

    assign jump_target_addr =
        execute_jump ? (
            ({32{idex_instr[31:26] == 6'b000010}} & {idex_next_pc[31:28], idex_instr[25:0], 2'b00}) |
            ({32{idex_instr[31:26] == 6'b111111}} & ((idex_imm << 2) + idex_next_pc))
        ) : idex_next_pc;

    assign jump_check = is_jump_instr && (jump_target_addr != idex_jump_addr);

    always @(posedge clk) begin
        exmem_dest_reg <= {32{resetn}} & forward_src2;
        exmem_instr <= {32{resetn}} & (
            {32{!(idex_instr[31:26] == 6'b000000 && idex_instr[5:0] == 6'b001010 && forward_src2 != 0)}}
        ) & idex_instr;
        exmem_result <= {32{resetn}} & (
            ({32{idex_instr[31:26] == 6'b000000}} & alu_result) |  // Arithmetic instruction result
            ({32{idex_instr[31:26] == 6'b100011}} & alu_result) |  // Load instruction result
            ({32{idex_instr[31:26] == 6'b101011}} & alu_result) |  // Store instruction result
            ({32{idex_instr[31:26] == 6'b111110}} & alu_result)    // Compare instruction result
        );

        exmem_pc <= {32{resetn}} & idex_pc;
    end

    // ============ MEM ==============
    assign data_sram_addr  = exmem_result;     // Address for data memory
    assign data_sram_wdata = exmem_dest_reg;   // Data to write to memory
    assign data_sram_wen   = exmem_instr[31:26] == 6'b101011;     // Write enable for store instruction
    assign data_sram_en    =
        (exmem_instr[31:26] == 6'b100011) |       // Enable for load instruction
        (exmem_instr[31:26] == 6'b101011);        // Enable for store instruction

    assign memwb_mem_data = {32{resetn}} & data_sram_rdata;

    always @(posedge clk) begin
        memwb_instr <= {32{resetn}} & exmem_instr;
        memwb_result <= {32{resetn}} & exmem_result;
        memwb_pc <= {32{resetn}} & exmem_pc;
    end

    // ============ WB ==============
    wire mux_select_wb;

    data_mux wb_mux (
        .input0(memwb_result),         // Result from ALU
        .input1(memwb_mem_data),       // Data read from memory
        .select_line(mux_select_wb),
        .output_data(regfile_wdata)
    );

    assign regfile_waddr =
        ({32{memwb_instr[31:26] == 6'b100011}} & memwb_instr[20:16]) |  // Write to rt for load
        ({32{memwb_instr[31:26] == 6'b000000}} & memwb_instr[15:11]) |  // Write to rd for R-type
        ({32{memwb_instr[31:26] == 6'b111110}} & memwb_instr[15:11]);   // Write to rd for compare

    assign mux_select_wb =
        (memwb_instr[31:26] == 6'b100011);        // Load writes memory data

    assign regfile_we =
        ((memwb_instr[31:26] == 6'b000000) |      // R-type write enable
         (memwb_instr[31:26] == 6'b100011) |      // Load instruction write enable
         (memwb_instr[31:26] == 6'b111110)) &    // Compare instruction write enable
        (regfile_waddr != 0);                     // Do not write to r0

    // Debug signals
    assign debug_wb_pc = memwb_pc;         // PC of the instruction being written back
    assign debug_wb_rf_wen   = regfile_we; // Write enable for register file
    assign debug_wb_rf_wnum  = regfile_waddr; // Register file write number
    assign debug_wb_rf_wdata = regfile_wdata; // Data to be written back

endmodule