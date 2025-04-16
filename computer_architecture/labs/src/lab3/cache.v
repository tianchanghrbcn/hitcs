module cache (
    input            clk             ,  // Clock signal
    input            resetn          ,  // Active-low reset signal

    // Sram-like interface between CPU and Cache
    input             cpu_req      ,    // CPU request signal
    input      [31:0] cpu_addr     ,    // CPU address signal
    output reg [31:0] cache_rdata  ,    // Data read from Cache
    output            cache_addr_ok,    // Cache address handshake signal
    output reg        cache_data_ok,    // Cache data handshake signal

    // AXI interface between Cache and memory
    output reg [3 :0] arid   ,         // AXI request ID
    output reg [31:0] araddr ,         // AXI address signal
    output reg        arvalid,         // AXI address valid signal
    input             arready,         // AXI address ready signal

    input      [3 :0] rid    ,         // AXI response ID
    input      [31:0] rdata  ,         // Data from AXI
    input             rlast  ,         // Last data signal for AXI burst
    input             rvalid ,         // Valid data signal from AXI
    output reg        rready           // Ready signal for AXI data
);

    //===========================================================
    // Internal wires and registers
    //===========================================================
    wire [31:0] way0_data_out, way1_data_out;  // Data read from two cache ways
    wire [9:0]  bram0_read_addr;               // BRAM0 read address
    wire        bram0_read_enable;             // BRAM0 read enable
    reg  [19:0] way0_tag_reg, way1_tag_reg;    // Tags for both ways
    reg         way0_valid_reg, way1_valid_reg;// Valid bits for both ways
    reg         way0_repl_reg,  way1_repl_reg; // Replacement bits
    reg [31:0]  request_addr_reg;              // Registered request address
    reg         flag_reg, fetch_flag_reg;      
    reg         transfer_done_reg;             // Indicates completion of line fetch
    reg  [9:0]  bram0_write_addr;              // BRAM0 write address
    reg [31:0]  bram0_write_data;              // BRAM0 write data
    reg         bram0_write_enable;            // BRAM0 write enable
    wire [9:0]  bram1_read_addr;               // BRAM1 read address
    wire        bram1_read_enable;             // BRAM1 read enable
    reg  [9:0]  bram1_write_addr;              // BRAM1 write address
    reg [31:0]  bram1_write_data;              // BRAM1 write data
    reg         bram1_write_enable;            // BRAM1 write enable

    // Each entry in tags_wayX is 22 bits:
    //   [21] = replacement bit
    //   [20] = valid bit
    //   [19:0] = tag bits
    reg [21:0] tags_way0[127:0]; // Tag array for way0
    reg [21:0] tags_way1[127:0]; // Tag array for way1

    reg [2:0]  state_reg; // Simple FSM: 0=IDLE, 1=AR, 2=RDATA, 3=DONE-prep, 4=DONE

    // Replacement logic: decide which way to replace
    wire way_override = (!way1_valid_reg || way1_repl_reg);

    // Address parsing
    wire [19:0] request_tag    = request_addr_reg[31:12];
    wire [ 6:0] request_index  = request_addr_reg[11:5];
    wire [ 4:0] request_offset = request_addr_reg[4:0];

    wire [19:0] cpu_tag    = cpu_addr[31:12];
    wire [ 6:0] cpu_index  = cpu_addr[11:5];
    wire [ 4:0] cpu_offset = cpu_addr[4:0];

    // Hit detection
    wire way0_hit = (way0_valid_reg && way0_tag_reg == request_tag);
    wire way1_hit = (way1_valid_reg && way1_tag_reg == request_tag);

    // CPU stalling logic
    wire cache_stall;

    // Flag used to indicate that we have returned the critical word to CPU
    // (so we won't send cache_data_ok again for the same miss)
    reg critical_word_fetched;  

    integer i;
    initial begin
        for(i = 0; i < 128; i = i + 1) begin
            tags_way0[i] = 22'b0;
            tags_way1[i] = 22'b0;
        end
    end

    //===========================================================
    // Main sequential logic
    //===========================================================
    always @(posedge clk) begin
        if(~resetn) begin
            // Reset internal registers
            state_reg          <= 3'd0;
            cache_data_ok      <= 1'b0;
            arvalid            <= 1'b0;
            rready             <= 1'b0;
            flag_reg           <= 1'b0;
            fetch_flag_reg     <= 1'b0;
            transfer_done_reg  <= 1'b0;

            way0_tag_reg       <= 20'd0;
            way1_tag_reg       <= 20'd0;
            way0_valid_reg     <= 1'b0;
            way1_valid_reg     <= 1'b0;
            way0_repl_reg      <= 1'b0;
            way1_repl_reg      <= 1'b0;
            request_addr_reg   <= 32'd0;

            bram0_write_enable <= 1'b0;
            bram1_write_enable <= 1'b0;
            bram0_write_addr   <= 10'd0;
            bram1_write_addr   <= 10'd0;
            bram0_write_data   <= 32'd0;
            bram1_write_data   <= 32'd0;

            critical_word_fetched <= 1'b0; 
        end
        else begin
            // Default signals
            cache_data_ok      <= 1'b0;
            bram0_write_enable <= 1'b0;
            bram1_write_enable <= 1'b0;

            // Latch current tag/valid bits if not stalled
            if(~cache_stall) begin
                way0_tag_reg     <= tags_way0[cpu_index][19:0];
                way1_tag_reg     <= tags_way1[cpu_index][19:0];
                way0_valid_reg   <= tags_way0[cpu_index][20];
                way1_valid_reg   <= tags_way1[cpu_index][20];
                way0_repl_reg    <= tags_way0[cpu_index][21];
                way1_repl_reg    <= tags_way1[cpu_index][21];
                request_addr_reg <= cpu_addr;
                flag_reg         <= 1'b1;
            end

            // FSM
            case (state_reg)
                3'd0: begin
                    // IDLE state
                    if(flag_reg) begin
                        // If hit in either way
                        if(way0_hit || way1_hit) begin
                            // Provide data to CPU immediately
                            cache_data_ok <= 1'b1;
                            cache_rdata   <= way0_hit ? way0_data_out : way1_data_out;

                            // Update replacement bits
                            tags_way0[request_index][21] <= way1_hit; // If way1 was hit => set way0's bit
                            tags_way1[request_index][21] <= way0_hit; // If way0 was hit => set way1's bit
                        end
                        else begin
                            // Miss => start AXI read request
                            arvalid <= 1'b1;
                            araddr  <= { request_tag, request_index, 5'b00000 };
                            arid    <= 4'd0;

                            // Reset critical_word_fetched for this new miss
                            critical_word_fetched <= 1'b0;

                            // Update replacement bits for the victim way
                            if(way_override) begin
                                bram1_write_addr          <= { request_index, 3'b000 } - 1;
                                tags_way1[request_index]  <= { 1'b0, 1'b1, request_tag };
                            end
                            else begin
                                bram0_write_addr          <= { request_index, 3'b000 } - 1;
                                tags_way0[request_index]  <= { 1'b0, 1'b1, request_tag };
                            end
                            state_reg <= 3'd1;
                        end
                    end
                end

                3'd1: begin
                    // AR state: wait for arready handshake
                    if(arready) begin
                        arvalid <= 1'b0;
                        rready  <= 1'b1;
                        state_reg <= 3'd2;
                    end
                end

                3'd2: begin
                    // RDATA state: receive AXI data burst
                    if(rvalid) begin
                        if(way_override) begin
                            // Write to way1
                            bram1_write_enable <= 1'b1;
                            bram1_write_data   <= rdata;
                            bram1_write_addr   <= bram1_write_addr + 1'b1;

                            // Early return of the critical word if not yet fetched
                            if(!critical_word_fetched &&
                               (bram1_write_addr + 1'b1 == { request_index, request_offset[4:2]})) begin
                                cache_rdata <= rdata;
                                cache_data_ok <= 1'b1;
                                critical_word_fetched <= 1'b1;
                            end

                        end
                        else begin
                            // Write to way0
                            bram0_write_enable <= 1'b1;
                            bram0_write_data   <= rdata;
                            bram0_write_addr   <= bram0_write_addr + 1'b1;

                            // Early return of the critical word if not yet fetched
                            if(!critical_word_fetched &&
                               (bram0_write_addr + 1'b1 == { request_index, request_offset[4:2]})) begin
                                cache_rdata <= rdata;
                                cache_data_ok <= 1'b1;
                                critical_word_fetched <= 1'b1;
                            end
                        end

                        // If we have reached the last word of the burst
                        if(rlast) begin
                            rready    <= 1'b0;
                            state_reg <= 3'd3;
                        end
                    end
                end

                3'd3: begin
                    // Wrap up
                    bram0_write_enable <= 1'b0;
                    bram1_write_enable <= 1'b0;
                    transfer_done_reg  <= 1'b1;
                    state_reg          <= 3'd4;
                end

                3'd4: begin
                    // Final step: if we never returned the critical word, do it now
                    if(!critical_word_fetched) begin
                        cache_data_ok <= 1'b1;
                    end
                    transfer_done_reg  <= 1'b0;
                    state_reg          <= 3'd0;
                end
            endcase
        end
    end

    //===========================================================
    // BRAM (Block Memory) instantiations for both ways
    //===========================================================
    blk_mem_gen_0 ram0(
        .clka(clk),
        .clkb(clk),
        .addra(bram0_write_addr),
        .addrb(bram0_read_addr),
        .wea  (bram0_write_enable),
        .enb  (bram0_read_enable),
        .dina (bram0_write_data),
        .doutb(way0_data_out)
    );

    blk_mem_gen_0 ram1(
        .clka(clk),
        .clkb(clk),
        .addra(bram1_write_addr),
        .addrb(bram1_read_addr),
        .wea  (bram1_write_enable),
        .enb  (bram1_read_enable),
        .dina (bram1_write_data),
        .doutb(way1_data_out)
    );

    //===========================================================
    // BRAM read enable and addresses
    //===========================================================
    assign bram0_read_enable = cpu_req && resetn && ~cache_stall;
    assign bram1_read_enable = cpu_req && resetn && ~cache_stall;
    assign bram0_read_addr   = { cpu_index, cpu_offset[4:2] };
    assign bram1_read_addr   = { cpu_index, cpu_offset[4:2] };

    //===========================================================
    // CPU stall logic
    //===========================================================
    // If we have captured the CPU address (flag_reg=1) but it's a miss
    // and the line fetch is not yet finished, we stall the CPU
    assign cache_stall = flag_reg && (~way0_hit && ~way1_hit && ~transfer_done_reg);

    // Address handshake is valid if not stalled
    assign cache_addr_ok = ~cache_stall && resetn;

endmodule
