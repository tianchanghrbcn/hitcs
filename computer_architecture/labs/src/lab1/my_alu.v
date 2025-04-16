`timescale 1ns / 1ps

`define ADD     6'b100000       // Addition
`define SUB     6'b100010       // Subtraction
`define AND     6'b100100       // Logical AND
`define OR      6'b100101       // Logical OR
`define XOR     6'b100110       // Logical XOR
`define MOVZ    6'b001010       // Conditional Move
`define SLL     6'b000000       // Logical Shift Left
`define CMP     6'b111110       // Compare

module my_alu(
    input [31:0] InputA,       // First operand (Input A)
    input [31:0] InputB,       // Second operand (Input B)
    input [5:0] Operation,     // ALU operation code
    input [4:0] ShiftAmount,   // Shift amount for SLL
    output [31:0] Result       // ALU computation result
    );

    // Intermediate results for each operation
    wire [31:0] addition_result = InputA + InputB;         // Addition
    wire [31:0] subtraction_result = InputA - InputB;      // Subtraction
    wire [31:0] and_result = InputA & InputB;              // Logical AND
    wire [31:0] or_result = InputA | InputB;               // Logical OR
    wire [31:0] xor_result = InputA ^ InputB;              // Logical XOR
    wire [31:0] movz_result = InputA;                      // Conditional Move
    wire [31:0] shift_left_result = InputB << ShiftAmount; // Logical Shift Left

    // Comparison Result: Encodes multiple comparison outcomes
    wire [31:0] comparison_result = {
        22'b0,
        !(InputA <= InputB),              // InputA > InputB unsigned
        !($signed(InputA) <= $signed(InputB)), // InputA > InputB signed
        !(InputA <  InputB),              // InputA >= InputB unsigned
        !($signed(InputA) <  $signed(InputB)), // InputA >= InputB signed
        !(InputA == InputB),             // InputA != InputB
        InputA <= InputB,                // InputA <= InputB unsigned
        $signed(InputA) <= $signed(InputB), // InputA <= InputB signed
        InputA <  InputB,                // InputA < InputB unsigned
        $signed(InputA) <  $signed(InputB), // InputA < InputB signed
        InputA == InputB                 // InputA == InputB
    };

    // Select the final output based on the Operation code
    assign Result =
        ({32{Operation == `ADD}} & addition_result) |
        ({32{Operation == `SUB}} & subtraction_result) |
        ({32{Operation == `AND}} & and_result) |
        ({32{Operation == `OR}} & or_result) |
        ({32{Operation == `XOR}} & xor_result) |
        ({32{Operation == `MOVZ}} & movz_result) |
        ({32{Operation == `SLL}} & shift_left_result) |
        ({32{Operation == `CMP}} & comparison_result);
endmodule
