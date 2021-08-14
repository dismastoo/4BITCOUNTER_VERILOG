//4 BIT COUNTER//
module counter(
          input clk,
          input rst,
          output reg [3:0] out
);

//always block is triggered at the rising edge of the clk(0->1)//
//Once inside this block, it checks if the reset is 0, if yes then change out to zero//
//if reset is 1,then design should be allowed to count up,so increment counter//

  always @(posedge clk) begin  
     if (!rst)
        out <=0;
     else
        out <= out + 1;
  end

endmodule

