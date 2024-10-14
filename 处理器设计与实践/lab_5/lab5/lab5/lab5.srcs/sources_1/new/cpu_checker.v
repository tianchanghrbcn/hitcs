`timescale 1ns / 1ps

/*
    By ywy_c_asm
    Decoder lab checker

    address space:
        0xXXXX0000: test end register (write only)
        0xXXXX0004: simulation register (read only)
        0xXXXX0008: status register ([0]: if end, [1]: if error) (read only)
        0xXXXX000c: error instruction (read only)
        0xXXXX0010: error pc (read only)
        0xXXXX0014: error waddr (read only)
        0xXXXX0018: error wdata (read only)
        0xXXXX001c: ans pc (read only)
        0xXXXX0020: ans waddr (read only)
        0xXXXX0024: ans wdata (read only)
        0xXXXX0028: counter (read only)
        
*/

`define     END_PC          32'h5c


`define     ADDR_TESTEND    16'h0000 
`define     ADDR_SIM        16'h0004 
`define     ADDR_STATUS     16'h0008 
`define     ADDR_ERRINST    16'h000c 
`define     ADDR_ERRPC      16'h0010 
`define     ADDR_ERRWADDR   16'h0014
`define     ADDR_ERRWDATA   16'h0018
`define     ADDR_ANSPC      16'h001c
`define     ADDR_ANSWADDR   16'h0020 
`define     ADDR_ANSWDATA   16'h0024
`define     ADDR_COUNTER    16'h0028

module cpu_checker
#(parameter SIMULATION=0)
(
    input       clk,
    input       resetn,

    input           checker_rvalid,
    output          checker_rready,
    input[31:0]     checker_raddr,
    output[31:0]    checker_rdata,
    input           checker_wen,
    input[31:0]     checker_waddr,
    input[31:0]     checker_wdata,

    // debug signals
    input [31:0]    debug_wb_pc     ,  // 当前正在执行指令的PC
    input           debug_wb_rf_wen ,  // 当前通用寄存器组的写使能信号
    input [4 :0]    debug_wb_rf_addr,  // 当前通用寄存器组写回的寄存器编号
    input [31:0]    debug_wb_rf_wdata  // 当前指令�?要写回的数据
    
    );

    reg[31:0]   testend;
    reg[31:0]   sim;
    reg[31:0]   status;
    reg[31:0]   errinst;
    reg[31:0]   errpc;
    reg[31:0]   errwaddr;
    reg[31:0]   errwdata;
    reg[31:0]   anspc;
    reg[31:0]   answaddr;
    reg[31:0]   answdata;
    reg[31:0]   counter;

    always@(posedge clk) begin
        if(~resetn)
            counter <= 0;
        else
            counter <= counter + 1;
    end

    wire fin = status[0] | status[1];

    initial begin
        sim = SIMULATION;
    end

    always@(posedge clk) begin
        if(SIMULATION) begin
            if(testend) begin
                $finish;
            end
        end
    end

    assign checker_rready = checker_rvalid;

    reg[31:0]   rdata;
    assign checker_rdata = rdata;
    always@(*) begin
        case(checker_raddr[15:0])
        `ADDR_TESTEND:      rdata = testend;
        `ADDR_SIM:          rdata = sim;
        `ADDR_STATUS:       rdata = status;
        `ADDR_ERRINST:      rdata = errinst;
        `ADDR_ERRPC:        rdata = errpc;
        `ADDR_ERRWADDR:     rdata = errwaddr;
        `ADDR_ERRWDATA:     rdata = errwdata;
        `ADDR_ANSPC:        rdata = anspc;
        `ADDR_ANSWADDR:     rdata = answaddr;
        `ADDR_ANSWDATA:     rdata = answdata;
        `ADDR_COUNTER:      rdata = counter;
        default:            rdata = 0;
        endcase
    end

    always@(posedge clk) begin
        if(~resetn)
            testend<=0;
        else begin
            if(checker_wen & (checker_waddr[15:0] == `ADDR_TESTEND))
                testend<=checker_wdata;
        end
    end

    wire[31:0]      a_pc;
    wire[4:0]       a_waddr;
    wire[31:0]      a_wdata;
    wire[31:0]      a_inst;
    cpu_inst_rom ir(
        .a((a_pc[9:2] < debug_wb_pc[9:2]) ? a_pc[9:2] : debug_wb_pc[9:2]),
        .spo(a_inst)
    );

    reg[5:0]        ptr;
    wire[63:0]      ans_out;
    cpu_ans_rom ansr(
        .a(ptr),
        .spo(ans_out)
    );

    assign a_wdata = ans_out[31:0];
    assign a_waddr = ans_out[36:32];
    assign a_pc = {16'b0, ans_out[52:37]};

    wire eof = (a_pc  == `END_PC);
    wire err = (a_pc != debug_wb_pc) | (a_waddr != debug_wb_rf_addr) | (a_wdata != debug_wb_rf_wdata);

    always@(posedge clk) begin
        if(~resetn) begin
            ptr <= 0;
            status <= 0;
            errinst <= 0;
            errpc <= 0;
            errwaddr <= 0;
            errwdata <= 0;
            anspc <= 0;
            answaddr <= 0;
            answdata <= 0;
        end
        else begin
            if(debug_wb_rf_wen & ~fin) begin
                status <= {30'b0, err, err | eof};
                errinst <= a_inst;
                errpc <= debug_wb_pc;
                errwaddr <= debug_wb_rf_addr;
                errwdata <= debug_wb_rf_wdata;
                anspc <= a_pc;
                answaddr <= a_waddr;
                answdata <= a_wdata;
                ptr <= ptr + 1;

                if(SIMULATION & err) begin
                    $display("---------------------------");
                    $display("Simulator: Detected error at %d ns", $time);
                end
            end
        end
    end


endmodule
