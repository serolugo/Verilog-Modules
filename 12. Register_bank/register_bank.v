// register_bank.v
// Parametric register bank: 2 read ports, 1 write port
//
// - Write: synchronous on posedge clk when we=1
// - Read: combinational (async read)
// - Optional reset clears all registers to 0

module register_bank #(
    parameter integer DATA_W = 32,
    parameter integer ADDR_W = 5,               // 2^ADDR_W registers
    parameter integer REG_N  = (1 << ADDR_W)
)(
    input  wire                  clk,
    input  wire                  rst,           // active-high
    input  wire                  we,            // write enable
    input  wire [ADDR_W-1:0]     waddr,
    input  wire [DATA_W-1:0]     wdata,
    input  wire [ADDR_W-1:0]     raddr1,
    input  wire [ADDR_W-1:0]     raddr2,
    output wire [DATA_W-1:0]     rdata1,
    output wire [DATA_W-1:0]     rdata2
);

    reg [DATA_W-1:0] regs [0:REG_N-1];
    integer i;

    // synchronous write + reset
    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < REG_N; i = i + 1)
                regs[i] <= {DATA_W{1'b0}};
        end else if (we) begin
            regs[waddr] <= wdata;
        end
    end

    // combinational reads
    assign rdata1 = regs[raddr1];
    assign rdata2 = regs[raddr2];

endmodule
