`timescale 1ns / 1ps

/*
    By ywy_c_asm
    Top SoC of programmable checker
        0: 1fc00000-1fcfffff: ram
        1: 1fd00000-1fdfffff: lcd
        2: 1fe00000-1fefffff: checker
*/

module soc_top
#(parameter SIMULATION=0)
(
    // 100MHz clock
    input           sys_clk,
    input           sys_rstn,
    //lcd hardware ports
    output          lcd_rst,
    output          lcd_cs,
    output          lcd_rs,
    output          lcd_rd,
    output          lcd_wr,
    inout[15:0]     lcd_db,
    output          lcd_bl_ctr
    );

    reg resetn;
    reg[31:0] rstcnt;

    initial begin
        resetn = 0;
        rstcnt = 0;
    end

    always@(posedge sys_clk) begin
        if(~sys_rstn) begin
            resetn <= 0;
            rstcnt <= 0;
        end
        else begin
            if(rstcnt == (SIMULATION ? 2 : 1000))
                resetn <= 1;
            rstcnt <= rstcnt + 1;
        end
    end

    wire clk50;
    clk_pll pll(
        .clk_in(sys_clk), 
        .clk_out(clk50)
    );
    wire clk = SIMULATION ? sys_clk : clk50;

    
    wire [3:0]      ram_arid;
    wire [31:0]     ram_araddr;
    wire [3:0]      ram_arlen;
    wire [2:0]      ram_arsize;
    wire [1:0]      ram_arburst;
    wire [1:0]      ram_arlock;
    wire [3:0]      ram_arcache;
    wire [2:0]      ram_arprot;
    wire            ram_arvalid;
    wire            ram_arready;
    wire [3:0]      ram_rid;
    wire [31:0]     ram_rdata;
    wire [1:0]      ram_rresp;
    wire            ram_rlast;
    wire            ram_rvalid;
    wire            ram_rready;

    //aw
    wire[3:0]       ram_awid;
    wire[31:0]      ram_awaddr;
    wire[3:0]       ram_awlen;
    wire[2:0]       ram_awsize;
    wire[1:0]       ram_awburst;
    wire[1:0]       ram_awlock;
    wire[3:0]       ram_awcache;
    wire[2:0]       ram_awprot;
    wire            ram_awvalid;
    wire            ram_awready;
    //w
    wire[3:0]       ram_wid;
    wire[31:0]      ram_wdata;
    wire[3:0]       ram_wstrb;
    wire            ram_wlast;
    wire            ram_wvalid;
    wire            ram_wready;
    //b
    wire[3:0]       ram_bid;
    wire[1:0]       ram_bresp;
    wire            ram_bvalid;
    wire            ram_bready;

    mr_bram ram(
        .s_aclk(clk),
        .s_aresetn(resetn),

        .s_axi_arid(ram_arid),
        .s_axi_araddr(ram_araddr),
        .s_axi_arlen({4'b0, ram_arlen}),
        .s_axi_arsize(ram_arsize),
        .s_axi_arburst(ram_arburst),
        .s_axi_arvalid(ram_arvalid),
        .s_axi_arready(ram_arready),
        .s_axi_rid(ram_rid),
        .s_axi_rdata(ram_rdata),
        .s_axi_rresp(ram_rresp),
        .s_axi_rlast(ram_rlast),
        .s_axi_rvalid(ram_rvalid),
        .s_axi_rready(ram_rready),

        .s_axi_awid(ram_awid),
        .s_axi_awaddr(ram_awaddr),
        .s_axi_awlen({4'b0, ram_awlen}),
        .s_axi_awsize(ram_awsize),
        .s_axi_awburst(ram_awburst),
        .s_axi_awvalid(ram_awvalid),
        .s_axi_awready(ram_awready),
        .s_axi_wdata(ram_wdata),
        .s_axi_wstrb(ram_wstrb),
        .s_axi_wlast(ram_wlast),
        .s_axi_wvalid(ram_wvalid),
        .s_axi_wready(ram_wready),
        .s_axi_bid(ram_bid),
        .s_axi_bresp(ram_bresp),
        .s_axi_bvalid(ram_bvalid),
        .s_axi_bready(ram_bready)
    );

    wire [3:0]      lcd_arid;
    wire [31:0]     lcd_araddr;
    wire [3:0]      lcd_arlen;
    wire [2:0]      lcd_arsize;
    wire [1:0]      lcd_arburst;
    wire [1:0]      lcd_arlock;
    wire [3:0]      lcd_arcache;
    wire [2:0]      lcd_arprot;
    wire            lcd_arvalid;
    wire            lcd_arready;
    wire [3:0]      lcd_rid;
    wire [31:0]     lcd_rdata;
    wire [1:0]      lcd_rresp;
    wire            lcd_rlast;
    wire            lcd_rvalid;
    wire            lcd_rready;

    //aw
    wire[3:0]       lcd_awid;
    wire[31:0]      lcd_awaddr;
    wire[3:0]       lcd_awlen;
    wire[2:0]       lcd_awsize;
    wire[1:0]       lcd_awburst;
    wire[1:0]       lcd_awlock;
    wire[3:0]       lcd_awcache;
    wire[2:0]       lcd_awprot;
    wire            lcd_awvalid;
    wire            lcd_awready;
    //w
    wire[3:0]       lcd_wid;
    wire[31:0]      lcd_wdata;
    wire[3:0]       lcd_wstrb;
    wire            lcd_wlast;
    wire            lcd_wvalid;
    wire            lcd_wready;
    //b
    wire[3:0]       lcd_bid;
    wire[1:0]       lcd_bresp;
    wire            lcd_bvalid;
    wire            lcd_bready;

    lcd_controller_0 lcd
    (
        .aclk(clk),
        .aresetn(resetn),
        .sim(SIMULATION),
        
        .lcd_rst(lcd_rst),
        .lcd_cs(lcd_cs),
        .lcd_rs(lcd_rs),
        .lcd_rd(lcd_rd),
        .lcd_wr(lcd_wr),
        .lcd_db(lcd_db),
        .lcd_bl_ctr(lcd_bl_ctr),

        // useless
        .dma_valid_dev(0),
        .dma_last_dev(0),
        .dma_data_dev(0),
        .grc_io_port_rdataword(0),

        // axi
        .arid({2'b0, lcd_arid}),
        .araddr(lcd_araddr),
        .arlen(lcd_arlen),
        .arsize(lcd_arsize),
        .arburst(lcd_arburst),
        .arlock(lcd_arlock),
        .arcache(lcd_arcache),
        .arprot(lcd_arprot),
        .arvalid(lcd_arvalid),
        .arready(lcd_arready),
        .rid(lcd_rid),
        .rdata(lcd_rdata),
        .rresp(lcd_rresp),
        .rlast(lcd_rlast),
        .rvalid(lcd_rvalid),
        .rready(lcd_rready),

        .awid({2'b0, lcd_awid}),
        .awaddr(lcd_awaddr),
        .awlen(lcd_awlen),
        .awsize(lcd_awsize),
        .awburst(lcd_awburst),
        .awlock(lcd_awlock),
        .awcache(lcd_awcache),
        .awprot(lcd_awprot),
        .awvalid(lcd_awvalid),
        .awready(lcd_awready),
        .wid({2'b0, lcd_wid}),
        .wdata(lcd_wdata),
        .wstrb(lcd_wstrb),
        .wlast(lcd_wlast),
        .wvalid(lcd_wvalid),
        .wready(lcd_wready),
        .bid(lcd_bid),
        .bresp(lcd_bresp),
        .bvalid(lcd_bvalid),
        .bready(lcd_bready)
    );



    wire [3:0]      cpu_arid;
    wire [31:0]     cpu_araddr;
    wire [3:0]      cpu_arlen;
    wire [2:0]      cpu_arsize;
    wire [1:0]      cpu_arburst;
    wire [1:0]      cpu_arlock;
    wire [3:0]      cpu_arcache;
    wire [2:0]      cpu_arprot;
    wire            cpu_arvalid;
    wire            cpu_arready;
    wire [3:0]      cpu_rid;
    wire [31:0]     cpu_rdata;
    wire [1:0]      cpu_rresp;
    wire            cpu_rlast;
    wire            cpu_rvalid;
    wire            cpu_rready;

    //aw
    wire[3:0]       cpu_awid;
    wire[31:0]      cpu_awaddr;
    wire[3:0]       cpu_awlen;
    wire[2:0]       cpu_awsize;
    wire[1:0]       cpu_awburst;
    wire[1:0]       cpu_awlock;
    wire[3:0]       cpu_awcache;
    wire[2:0]       cpu_awprot;
    wire            cpu_awvalid;
    wire            cpu_awready;
    //w
    wire[3:0]       cpu_wid;
    wire[31:0]      cpu_wdata;
    wire[3:0]       cpu_wstrb;
    wire            cpu_wlast;
    wire            cpu_wvalid;
    wire            cpu_wready;
    //b
    wire[3:0]       cpu_bid;
    wire[1:0]       cpu_bresp;
    wire            cpu_bvalid;
    wire            cpu_bready;

    ma_river_core_0 mrcore(
        .ext_int(0),
        .aclk(clk),
        .aresetn(resetn),

        // axi
        .arid(cpu_arid),
        .araddr(cpu_araddr),
        .arlen(cpu_arlen),
        .arsize(cpu_arsize),
        .arburst(cpu_arburst),
        .arlock(cpu_arlock),
        .arcache(cpu_arcache),
        .arprot(cpu_arprot),
        .arvalid(cpu_arvalid),
        .arready(cpu_arready),
        .rid(cpu_rid),
        .rdata(cpu_rdata),
        .rresp(cpu_rresp),
        .rlast(cpu_rlast),
        .rvalid(cpu_rvalid),
        .rready(cpu_rready),

        .awid(cpu_awid),
        .awaddr(cpu_awaddr),
        .awlen(cpu_awlen),
        .awsize(cpu_awsize),
        .awburst(cpu_awburst),
        .awlock(cpu_awlock),
        .awcache(cpu_awcache),
        .awprot(cpu_awprot),
        .awvalid(cpu_awvalid),
        .awready(cpu_awready),
        .wid(cpu_wid),
        .wdata(cpu_wdata),
        .wstrb(cpu_wstrb),
        .wlast(cpu_wlast),
        .wvalid(cpu_wvalid),
        .wready(cpu_wready),
        .bid(cpu_bid),
        .bresp(cpu_bresp),
        .bvalid(cpu_bvalid),
        .bready(cpu_bready)
    );

    wire [3:0]      checker_arid;
    wire [31:0]     checker_araddr;
    wire [3:0]      checker_arlen;
    wire [2:0]      checker_arsize;
    wire [1:0]      checker_arburst;
    wire [1:0]      checker_arlock;
    wire [3:0]      checker_arcache;
    wire [2:0]      checker_arprot;
    wire            checker_arvalid;
    wire            checker_arready;
    wire [3:0]      checker_rid;
    wire [31:0]     checker_rdata;
    wire [1:0]      checker_rresp;
    wire            checker_rlast;
    wire            checker_rvalid;
    wire            checker_rready;

    //aw
    wire[3:0]       checker_awid;
    wire[31:0]      checker_awaddr;
    wire[3:0]       checker_awlen;
    wire[2:0]       checker_awsize;
    wire[1:0]       checker_awburst;
    wire[1:0]       checker_awlock;
    wire[3:0]       checker_awcache;
    wire[2:0]       checker_awprot;
    wire            checker_awvalid;
    wire            checker_awready;
    //w
    wire[3:0]       checker_wid;
    wire[31:0]      checker_wdata;
    wire[3:0]       checker_wstrb;
    wire            checker_wlast;
    wire            checker_wvalid;
    wire            checker_wready;
    //b
    wire[3:0]       checker_bid;
    wire[1:0]       checker_bresp;
    wire            checker_bvalid;
    wire            checker_bready;

    wire            c_rvalid;
    wire            c_rready;
    wire[31:0]      c_raddr;
    wire[31:0]      c_rdata;
    wire            c_wen;
    wire[31:0]      c_waddr;
    wire[31:0]      c_wdata;

    checker_wrapper cw(
        .aclk(clk),
        .aresetn(resetn),

        // axi
        .arid(checker_arid),
        .araddr(checker_araddr),
        .arlen(checker_arlen),
        .arsize(checker_arsize),
        .arburst(checker_arburst),
        .arlock(checker_arlock),
        .arcache(checker_arcache),
        .arprot(checker_arprot),
        .arvalid(checker_arvalid),
        .arready(checker_arready),
        .rid(checker_rid),
        .rdata(checker_rdata),
        .rresp(checker_rresp),
        .rlast(checker_rlast),
        .rvalid(checker_rvalid),
        .rready(checker_rready),

        .awid(checker_awid),
        .awaddr(checker_awaddr),
        .awlen(checker_awlen),
        .awsize(checker_awsize),
        .awburst(checker_awburst),
        .awlock(checker_awlock),
        .awcache(checker_awcache),
        .awprot(checker_awprot),
        .awvalid(checker_awvalid),
        .awready(checker_awready),
        .wid(checker_wid),
        .wdata(checker_wdata),
        .wstrb(checker_wstrb),
        .wlast(checker_wlast),
        .wvalid(checker_wvalid),
        .wready(checker_wready),
        .bid(checker_bid),
        .bresp(checker_bresp),
        .bvalid(checker_bvalid),
        .bready(checker_bready),

        .checker_rvalid(c_rvalid),
        .checker_rready(c_rready),
        .checker_raddr(c_raddr),
        .checker_rdata(c_rdata),
        .checker_wen(c_wen),
        .checker_waddr(c_waddr),
        .checker_wdata(c_wdata)
    );

    axi_bus axib(
        .aclk(clk),
        .aresetn(resetn),

        .s_axi_arid(cpu_arid),
        .s_axi_araddr(cpu_araddr),
        .s_axi_arlen(cpu_arlen),
        .s_axi_arsize(cpu_arsize),
        .s_axi_arburst(cpu_arburst),
        .s_axi_arlock(cpu_arlock),
        .s_axi_arcache(cpu_arcache),
        .s_axi_arprot(cpu_arprot),
        .s_axi_arvalid(cpu_arvalid),
        .s_axi_arready(cpu_arready),
        .s_axi_arqos(0),
        .s_axi_rid(cpu_rid),
        .s_axi_rdata(cpu_rdata),
        .s_axi_rresp(cpu_rresp),
        .s_axi_rlast(cpu_rlast),
        .s_axi_rvalid(cpu_rvalid),
        .s_axi_rready(cpu_rready),
        .s_axi_awid(cpu_awid),
        .s_axi_awaddr(cpu_awaddr),
        .s_axi_awlen(cpu_awlen),
        .s_axi_awsize(cpu_awsize),
        .s_axi_awburst(cpu_awburst),
        .s_axi_awlock(cpu_awlock),
        .s_axi_awcache(cpu_awcache),
        .s_axi_awprot(cpu_awprot),
        .s_axi_awvalid(cpu_awvalid),
        .s_axi_awready(cpu_awready),
        .s_axi_awqos(0),
        .s_axi_wid(cpu_wid),
        .s_axi_wdata(cpu_wdata),
        .s_axi_wstrb(cpu_wstrb),
        .s_axi_wlast(cpu_wlast),
        .s_axi_wvalid(cpu_wvalid),
        .s_axi_wready(cpu_wready),
        .s_axi_bid(cpu_bid),
        .s_axi_bresp(cpu_bresp),
        .s_axi_bvalid(cpu_bvalid),
        .s_axi_bready(cpu_bready),


        .m_axi_arid({checker_arid, lcd_arid, ram_arid}),
        .m_axi_araddr({checker_araddr, lcd_araddr, ram_araddr}),
        .m_axi_arlen({checker_arlen, lcd_arlen, ram_arlen}),
        .m_axi_arsize({checker_arsize, lcd_arsize, ram_arsize}),
        .m_axi_arburst({checker_arburst, lcd_arburst, ram_arburst}),
        .m_axi_arlock({checker_arlock, lcd_arlock, ram_arlock}),
        .m_axi_arcache({checker_arcache, lcd_arcache, ram_arcache}),
        .m_axi_arprot({checker_arprot, lcd_arprot, ram_arprot}),
        .m_axi_arvalid({checker_arvalid, lcd_arvalid, ram_arvalid}),
        .m_axi_arready({checker_arready, lcd_arready, ram_arready}),
        .m_axi_rid({checker_rid, lcd_rid, ram_rid}),
        .m_axi_rdata({checker_rdata, lcd_rdata, ram_rdata}),
        .m_axi_rresp({checker_rresp, lcd_rresp, ram_rresp}),
        .m_axi_rlast({checker_rlast, lcd_rlast, ram_rlast}),
        .m_axi_rvalid({checker_rvalid, lcd_rvalid, ram_rvalid}),
        .m_axi_rready({checker_rready, lcd_rready, ram_rready}),
        .m_axi_awid({checker_awid, lcd_awid, ram_awid}),
        .m_axi_awaddr({checker_awaddr, lcd_awaddr, ram_awaddr}),
        .m_axi_awlen({checker_awlen, lcd_awlen, ram_awlen}),
        .m_axi_awsize({checker_awsize, lcd_awsize, ram_awsize}),
        .m_axi_awburst({checker_awburst, lcd_awburst, ram_awburst}),
        .m_axi_awlock({checker_awlock, lcd_awlock, ram_awlock}),
        .m_axi_awcache({checker_awcache, lcd_awcache, ram_awcache}),
        .m_axi_awprot({checker_awprot, lcd_awprot, ram_awprot}),
        .m_axi_awvalid({checker_awvalid, lcd_awvalid, ram_awvalid}),
        .m_axi_awready({checker_awready, lcd_awready, ram_awready}),
        .m_axi_wid({checker_wid, lcd_wid, ram_wid}),
        .m_axi_wdata({checker_wdata, lcd_wdata, ram_wdata}),
        .m_axi_wstrb({checker_wstrb, lcd_wstrb, ram_wstrb}),
        .m_axi_wlast({checker_wlast, lcd_wlast, ram_wlast}),
        .m_axi_wvalid({checker_wvalid, lcd_wvalid, ram_wvalid}),
        .m_axi_wready({checker_wready, lcd_wready, ram_wready}),
        .m_axi_bid({checker_bid, lcd_bid, ram_bid}),
        .m_axi_bresp({checker_bresp, lcd_bresp, ram_bresp}),
        .m_axi_bvalid({checker_bvalid, lcd_bvalid, ram_bvalid}),
        .m_axi_bready({checker_bready, lcd_bready, ram_bready})
    );


    wire[31:0]      d_inst;
    wire            d_wen;
    wire[4:0]       d_waddr;
    wire            d_rden1;
    wire[4:0]       d_raddr1;
    wire            d_rden2;
    wire[4:0]       d_raddr2;
    wire            d_alu_en;
    wire[4:0]       d_alu_card;
    wire            d_mem_rd;
    wire            d_mem_wr;
    wire            d_jmp;
    wire            d_invalid;

    inst_decoder your_decoder(
        .inst(d_inst),
        .wen(d_wen),
        .waddr(d_waddr),
        .rden1(d_rden1),
        .raddr1(d_raddr1),
        .rden2(d_rden2),
        .raddr2(d_raddr2),
        .alu_en(d_alu_en),
        .alu_card(d_alu_card),
        .mem_rd(d_mem_rd),
        .mem_wr(d_mem_wr),
        .jmp(d_jmp),
        .invalid(d_invalid)
    );

    decoder_checker #(.SIMULATION(SIMULATION)) checker(
        .clk(clk),
        .resetn(resetn),

        .checker_rvalid(c_rvalid),
        .checker_rready(c_rready),
        .checker_raddr(c_raddr),
        .checker_rdata(c_rdata),
        .checker_wen(c_wen),
        .checker_waddr(c_waddr),
        .checker_wdata(c_wdata),

        .d_inst(d_inst),
        .d_wen(d_wen),
        .d_waddr(d_waddr),
        .d_rden1(d_rden1),
        .d_raddr1(d_raddr1),
        .d_rden2(d_rden2),
        .d_raddr2(d_raddr2),
        .d_alu_en(d_alu_en),
        .d_alu_card(d_alu_card),
        .d_mem_rd(d_mem_rd),
        .d_mem_wr(d_mem_wr),
        .d_jmp(d_jmp),
        .d_invalid(d_invalid)
    );


endmodule
