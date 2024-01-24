module clock_div(clk,reset,clk1hz);
  input clk ,reset;
  output reg clk1hz;
  reg [6:0]count=7'b0; 
  initial 
      clk1hz=0;
always @(posedge clk or posedge reset)
    begin 
      if (reset )
        count<=7'b0;
      else
         begin
          if(count<1_00) 
            count<= count + 1'b1;
         else
            begin
             clk1hz<=~clk1hz;
             count <=7'b0;
           end
       end
    end
endmodule


module clock_div_dut;
  reg reset;
  wire clk1hz;
  initial 
    begin 
      reset<=1; #50;
     reset<=0;
    end
    clock_div clk_1hz(reset,clk1hz);
endmodule 
    
  