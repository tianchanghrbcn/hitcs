`timescale 1ns / 1ps

/*
    By ywy_c_asm
    Cache lab checker

    address space:
        0xXXXX0000: test end register (write only)
        0xXXXX0004: simulation register (read only)
        0xXXXX0008: status register ([0]: if end, [1]: if error) (read only)
        0xXXXX000c: counter (read only)
        0xXXXX0010: error addr (read only)
        0xXXXX0014: error data (read only)
        0xXXXX001c: test count (read only)
        0xXXXX0020: miss count (read only)
        0xXXXX0024: cycle count (read only)
*/

`define     ADDR_TESTEND    16'h0000 
`define     ADDR_SIM        16'h0004 
`define     ADDR_STATUS     16'h0008 
`define     ADDR_COUNTER    16'h000c
`define     ADDR_ERRADDR    16'h0010
`define     ADDR_ERRDATA    16'h0014
`define     ADDR_TESTCNT    16'h001c
`define     ADDR_MISSCNT    16'h0020
`define     ADDR_CYCLE      16'h0024


module cache_checker
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

    input           miss,
     //  Sram-Like接口信号，用于CPU访问Cache
    output          cpu_req      ,    //由CPU发送至Cache
    output[31:0]    cpu_addr     ,    //由CPU发送至Cache
    input[31:0]     cache_rdata  ,    //由Cache返回给CPU
    input           cache_addr_ok,    //由Cache返回给CPU
    input           cache_data_ok     //由Cache返回给CPU
    );
    
    reg[31:0]   testend;
    reg[31:0]   sim;
    reg[31:0]   status;
    reg[31:0]   counter;
    reg[31:0]   erraddr;
    reg[31:0]   errdata;
    reg[31:0]   testcnt;
    reg[31:0]   misscnt;
    reg[31:0]   cycle;

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
        `ADDR_COUNTER:      rdata = counter;
        `ADDR_ERRADDR:      rdata = erraddr;
        `ADDR_ERRDATA:      rdata = errdata;
        `ADDR_TESTCNT:      rdata = testcnt;
        `ADDR_MISSCNT:      rdata = misscnt;
        `ADDR_CYCLE:        rdata = cycle;
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

    reg[19:0] in_ptr, out_ptr;
    reg[31:0] cache_data;
    reg cache_en;
    wire[31:0] addr_in;
    wire[31:0] ans_data;
    cache_trace ct(
        .clka(clk), .addra((cpu_req & cache_addr_ok & resetn) ? (in_ptr + 1) : in_ptr), .douta(addr_in),
        .clkb(clk), .addrb(out_ptr), .doutb(ans_data)
    );

    wire eof = (ans_data == 0) & (out_ptr > 1);
    wire err = (ans_data != cache_data) & (ans_data != 0) & cache_en;

    always@(posedge clk) begin
        if(~resetn) begin
            misscnt <= 0;
            testcnt <= 0;
            cache_en <= 0;
            cache_data <= 0;
        end
        else if(~fin) begin
            if(miss)
                misscnt <= misscnt + 1;
            testcnt <= {12'b0, out_ptr};
            cycle <= counter;
            cache_en <= cache_data_ok;
            cache_data <= cache_rdata;
        end
    end

    always@(posedge clk) begin
        if(~resetn) begin
            in_ptr <= 0;
            out_ptr <= 0;
            erraddr <= 0;
            errdata <= 0;
            status <= 0;
        end
        else if(~fin) begin
            if(cache_data_ok)
                out_ptr <= out_ptr + 1;
            if(cpu_req & cache_addr_ok)
                in_ptr <= in_ptr + 1;
            if(cache_en) begin
                status <= {30'b0, err, err | eof};
                erraddr <= ans_data;
                errdata <= cache_data;

                if(SIMULATION & err) begin
                    $display("---------------------------");
                    $display("Simulator: Detected error at %d ns", $time);
                end
            end
        end
    end

    assign cpu_req = ~fin;
    assign cpu_addr = addr_in;

endmodule
