// demux.v
// Parametric 1-to-N demultiplexer (one-hot output enable style)
//
// Routes din to exactly one output based on sel.
// All other outputs are driven to 0.
//
// Notes:
// - N must be power of 2 for clean addressing with $clog2(N).
// - Synthesizable in standard FPGA flows.

module demux #(
    parameter integer N = 4,          // number of outputs
    parameter integer WIDTH = 8        // width of each output
)(
    input  wire [WIDTH-1:0] din,
    input  wire [$clog2(N)-1:0] sel,
    output reg  [N*WIDTH-1:0] dout
);

    integer i;

    always @(*) begin
        dout = {N*WIDTH{1'b0}};
        for (i = 0; i < N; i = i + 1) begin
            if (sel == i[$clog2(N)-1:0]) begin
                dout[i*WIDTH +: WIDTH] = din;
            end
        end
    end

endmodule
