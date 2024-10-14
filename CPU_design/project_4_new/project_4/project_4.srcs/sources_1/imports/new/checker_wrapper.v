`timescale 1ns / 1ps

/*
    By ywy_c_asm
    simple AXI--SRAM-like wrapper for checker
*/

module checker_wrapper(
    input       aclk,    //=100MHz
    input       aresetn,

    //ar
    input[3:0]     arid,
    input[31:0]    araddr,
    input[3:0]     arlen,
    input[2:0]     arsize,
    input[1:0]     arburst,
    input[1:0]     arlock,
    input[3:0]     arcache,
    input[2:0]     arprot,
    input          arvalid,
    output         arready,
    //r
    output[3:0]      rid,
    output[31:0]     rdata,
    output[1:0]      rresp,
    output           rlast,
    output           rvalid,
    input            rready,
    //aw
    input[3:0]     awid,
    input[31:0]    awaddr,
    input[3:0]     awlen,
    input[2:0]     awsize,
    input[1:0]     awburst,
    input[1:0]     awlock,
    input[3:0]     awcache,
    input[2:0]     awprot,
    input          awvalid,
    output         awready,
    //w
    input[3:0]     wid,
    input[31:0]    wdata,
    input[3:0]     wstrb,
    input          wlast,
    input          wvalid,
    output         wready,
    //b
    output[3:0]      bid,
    output[1:0]      bresp,
    output           bvalid,
    input            bready,

    // checker interface
    output          checker_rvalid,
    input           checker_rready,
    output[31:0]    checker_raddr,
    input[31:0]     checker_rdata,
    output          checker_wen,
    output[31:0]    checker_waddr,
    output[31:0]    checker_wdata
    );

    wire clk = aclk;
    wire resetn = aresetn;


    reg[2:0]    state;
    reg[31:0]   cached_addr;
    reg[31:0]   cached_wdata;
    reg[31:0]   cached_rdata;
    reg         rwen;
    reg         rren;
    reg[3:0]    cached_id;

    assign checker_wen = rwen;
    assign checker_wdata = cached_wdata;
    assign checker_rvalid = rren;
    assign checker_raddr = cached_addr;
    assign checker_waddr = cached_addr;
    always@(posedge clk) begin
        if(~resetn) begin
            cached_wdata<=0;
            rwen<=0;
            cached_addr<=0;
            rren<=0;
            cached_id<=0;
            cached_rdata<=0;
        end
        else begin
            rwen <= wvalid & wready;
            cached_wdata<=wdata;
            if(arvalid & arready)
                cached_addr<=araddr;
            else if(awvalid & awready)
                cached_addr<=awaddr;
            
            if(arvalid & arready)
                cached_id<=arid;
            else if(awvalid & awready)
                cached_id<=awid;
            
            if(arvalid & arready)
                rren<=1;
            else if(checker_rvalid & checker_rready)
                rren<=0;
            
            if(checker_rvalid & checker_rready)
                cached_rdata<=checker_rdata;
        end
    end

    assign arready = (state == 0);
    assign rid = cached_id;
    assign rdata = cached_rdata;
    assign rresp = 0;
    assign rlast = rvalid & rready;
    assign rvalid = (state == 2);
    assign awready = (state == 0);
    assign wready = (state == 4);
    assign bid = cached_id;
    assign bresp = 0;
    assign bvalid = (state == 5);


    always@(posedge clk) begin
        if(~resetn) begin
            state<=0;
        end
        else begin
            case(state)
            0: begin        // idle
                if(arvalid & arready)
                    state<=1;
                else if(awvalid & awready)
                    state<=4;
            end
            1: begin        // wait for checker_rready
                if(checker_rvalid & checker_rready)
                    state<=2;
            end
            2: begin        // send data
                if(rready & rvalid)
                    state<=0;
            end
            4: begin        // wait for wvalid
                if(wvalid & wready)
                    state<=5;
            end
            5: begin        // wait for bready
                if(bvalid & bready)
                    state<=0;
            end
            endcase
        end
    end



endmodule
