/*
 * Tiny Tapeout 08 Top Module Configuration
 */

`default_nettype none

module tt_um_thiruvarul_s_rtl_to_gds (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path
    input  wire       ena,      // Power enablement signal
    input  wire       clk,      // System clock
    input  wire       rst_n     // Reset line (active low)
);

  // Standard combinational logic implementation
  assign uo_out  = ui_in + uio_in;
  assign uio_out = 8'b00000000;
  assign uio_oe  = 8'b00000000;

  // Unused signal tie-off to prevent compiler warnings
  wire _unused = &{ena, clk, rst_n, 1'b0};

endmodule
