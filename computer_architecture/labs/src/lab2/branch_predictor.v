`timescale 1ns / 1ps

module my_branch_predictor (
    input clock,
    input reset,

    input branch_condition_detect,      // Detect branch condition
    input branch_instruction,           // Indicates current instruction is a branch instruction
    input branch_execution_success,     // Indicates whether the branch was successfully executed
    input[31:0] branch_target_address,  // Branch target address

    input[31:0] instruction_id_stage,   // Instruction in ID stage
    input[31:0] instruction_ex_stage,   // Instruction in EX stage
    input[31:0] pc_id_stage,            // PC in ID stage
    input[31:0] pc_ex_stage,            // PC in EX stage

    output[31:0] next_pc                // Next PC
);

    // Predictor table: 128 entries
    reg [31:0] predictor_table[127:0];       // Stores predicted next PC
    reg [1:0] predictor_counter[127:0];      // 2-bit saturating counter
    integer index;

    // Predictor initialization
    initial begin
        for (index = 0; index < 128; index = index + 1) begin
            predictor_table[index] = 32'b0;          // Initialize predicted PC to 0
            predictor_counter[index] = 2'b01;       // Initialize counter to "weak not taken"
        end
    end

    // Index for accessing predictor table
    wire [6:0] id_index = pc_id_stage[8:2]; // Use bits [8:2] as index
    wire [6:0] ex_index = pc_ex_stage[8:2]; // Use bits [8:2] as index

    // Determine if branch is predicted taken or not
    wire prediction_taken = predictor_counter[id_index] >= 2'b10; // Strongly or weakly taken
    wire [31:0] predicted_target = predictor_table[id_index];     // Predicted target address

    // Calculate next PC
    assign next_pc = branch_condition_detect ? branch_target_address : (prediction_taken ? predicted_target : pc_id_stage + 4);

    always @(posedge clock or negedge reset) begin
        if (!reset) begin
            // Reset predictor table
            for (index = 0; index < 128; index = index + 1) begin
                predictor_table[index] <= 32'b0;
                predictor_counter[index] <= 2'b01;
            end
        end else if (branch_instruction) begin
            // Update predictor table on branch execution
            if (branch_execution_success) begin
                // Branch taken: update target and increment counter
                predictor_table[ex_index] <= branch_target_address;
                case (predictor_counter[ex_index])
                    2'b00: predictor_counter[ex_index] <= 2'b01;
                    2'b01: predictor_counter[ex_index] <= 2'b10;
                    2'b10: predictor_counter[ex_index] <= 2'b11;
                    2'b11: predictor_counter[ex_index] <= 2'b11;
                endcase
            end else begin
                // Branch not taken: decrement counter
                case (predictor_counter[ex_index])
                    2'b00: predictor_counter[ex_index] <= 2'b00;
                    2'b01: predictor_counter[ex_index] <= 2'b00;
                    2'b10: predictor_counter[ex_index] <= 2'b01;
                    2'b11: predictor_counter[ex_index] <= 2'b10;
                endcase
            end
        end
    end

endmodule
