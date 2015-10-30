/**
 * Module: core
 *
 * The processor core.
 */
module core (
    input logic clk,
    input logic resetn
);

    regfile regfile (
        .clk(clk),
        .raddr1(),
        .rdata1(),
        .raddr2(),
        .rdata2(),
        .wen(),
        .waddr(),
        .wdata()
    );

    fetch fetch (
        .clk(clk),
        .resetn(resetn),
        .bubble(),
        .pc_sel(),
        .jal_bxx_tgt(),
        .jalr_tgt(),
        .pc(),
        .ir()
    );

    execute execute (
        .clk(clk),
        .pc(),
        .bypass_alu(),
        .out(),
        .jal_bxx_tgt(),
        .jalr_tgt()
    );

endmodule
