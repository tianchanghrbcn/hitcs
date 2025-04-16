`timescale 1ns / 1ps

/*
    By ywy_c_asm
    Decoder lab checker

    address space:
        0xXXXX0000: test end register (write only)
        0xXXXX0004: simulation register (read only)
        0xXXXX0008: status register ([0]: if end, [1]: if error, [31:16]: error id) (read only)
        0xXXXX000c: error instruction (read only)
        0xXXXX0010: error ctrl signal (read only)
        0xXXXX0014: answer (read only)
        
*/

`define     TEST_CNT        14


`define     ADDR_TESTEND    16'h0000 
`define     ADDR_SIM        16'h0004 
`define     ADDR_STATUS     16'h0008 
`define     ADDR_ERRINST    16'h000c 
`define     ADDR_ERRCTRL    16'h0010 
`define     ADDR_ANS        16'h0014 

module decoder_checker
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

    output[31:0]     d_inst,
    input            d_wen,
    input[4:0]       d_waddr,
    input            d_rden1,
    input[4:0]       d_raddr1,
    input            d_rden2,
    input[4:0]       d_raddr2,
    input            d_alu_en,
    input[4:0]       d_alu_card,
    input            d_mem_rd,
    input            d_mem_wr,
    input            d_jmp,
    input            d_invalid
    
    );

    reg[31:0]   testend;
    reg[31:0]   sim;
    reg[31:0]   status;
    reg[31:0]   errinst;
    reg[31:0]   errctrl;
    reg[31:0]   ans;

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
        `ADDR_ERRCTRL:      rdata = errctrl;
        `ADDR_ANS:          rdata = ans;
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

    
    

    wire[31:0]      d_ctrl = {4'b0, d_wen, d_waddr, d_rden1, d_raddr1,
        d_rden2, d_raddr2, d_alu_en, d_alu_card, d_mem_rd, d_mem_wr, d_jmp, d_invalid};

    wire[31:0]      ans_out;
    reg[3:0]        ptr;
    reg[3:0]        preptr;

    ans_ram ar(
        .clka(clk),
        .addra(ptr),
        .douta(ans_out)
    );

    input_ram ir(
        .clka(clk),
        .addra(ptr),
        .douta(d_inst)
    );

    wire            a_wen = ans_out[27];
    wire[4:0]       a_waddr = ans_out[26:22];
    wire            a_rden1 = ans_out[21];
    wire[4:0]       a_raddr1 = ans_out[20:16];
    wire            a_rden2 = ans_out[15];
    wire[4:0]       a_raddr2 = ans_out[14:10];
    wire            a_alu_en = ans_out[9];
    wire[4:0]       a_alu_card = ans_out[8:4];
    wire            a_mem_rd = ans_out[3];
    wire            a_mem_wr = ans_out[2];
    wire            a_jmp = ans_out[1];
    wire            a_invalid = ans_out[0];

    wire            s_inv = (a_invalid == d_invalid);
    wire            s_c = a_invalid | ({a_wen, a_alu_en, a_mem_rd, a_mem_wr, a_jmp} == {d_wen, d_alu_en, d_mem_rd, d_mem_wr, d_jmp});
    wire            s_we = a_invalid | (~a_wen) | (a_waddr == d_waddr);
    wire            s_alu = a_invalid | (~a_alu_en) | (a_alu_card == d_alu_card);
    wire            s_rden = a_invalid | ({a_rden1, a_rden2} == {d_rden1, d_rden2}) | ({a_rden1, a_rden2} == {d_rden2, d_rden1});
    reg             _s_raddr;
    wire            s_raddr = a_invalid | _s_raddr;
    always@(*) begin
        case({a_rden1, a_rden2})
        2'b00:      _s_raddr = 1;
        2'b10:      _s_raddr = d_rden1 ? (d_raddr1 == a_raddr1) : (d_raddr2 == a_raddr1);
        2'b11:      _s_raddr = ({d_raddr1, d_raddr2} == {a_raddr1, a_raddr2}) | ({d_raddr2, d_raddr1} == {a_raddr1, a_raddr2});
        default:    _s_raddr = 1;       // impossible
        endcase
    end

    wire            success = s_inv & s_c & s_we & s_alu & s_rden & s_raddr;
    wire            eof = (ptr == `TEST_CNT);

    always@(posedge clk) begin
        if(~resetn) begin
            ptr <= 0;
            testend <= 0;
            status <= 0;
            errinst <= 0;
            errctrl <= 0;
            ans <= 0;
            preptr <= 0;
        end
        else begin
            preptr <= ptr;
            if(~fin) begin
                errinst <= d_inst;
                errctrl <= d_ctrl;
                ans <= ans_out;
                status <= {12'b0, preptr, 14'b0, 
                    (~success),    // error
                    (~success) | eof 
                };
                ptr <= ptr + 1;
                
                if(SIMULATION & ~success) begin
                    $display("---------------------------");
                    $display("Simulator: Detected error at %d ns", $time);
                end
            end
        end
    end


endmodule
