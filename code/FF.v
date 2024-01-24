module FF(clk,D,Q);
  input clk,D;
  output reg Q;
  initial 
     Q=0;
  always@(posedge clk)
      Q=D;
endmodule 