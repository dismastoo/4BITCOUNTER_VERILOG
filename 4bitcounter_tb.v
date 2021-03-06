//4BIT_COUNTER_TB//
`timescale 1ns/1ps
module counter_tb;
 reg clk;
 reg rst;
 wire [3:0] out;

 counter uut(
  .clk(clk),
  .rst(rst),
  .out(out));


 always #5 clk = ~clk;

 initial begin
 clk <= 0;
 rst <= 0;

 #20 rst <= 1;
 #80 rst <= 0;
 #50 rst <= 1;

 #20 $finish;

 end
 initial begin
 $monitor("CLK =%1b,RST=%1b, OUT=%4b",clk,rst,out);
 end
endmodule
