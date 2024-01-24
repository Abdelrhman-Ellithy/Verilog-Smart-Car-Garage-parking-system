module FF_with_clk_div_clg_g(reset ,D ,Q, clk_slw);
  input D, reset;
  output Q ;
  output clk_slw;
  wire clk ;
  clock_gen clh_g(clk);
  wire clk_slw;
  clock_div clk_div(clk , reset , clk_slw);
  
  FF ff_ts(clk_slw , D ,Q );
endmodule


module FF_clock_div_clock_gen_dut;
  reg D;
  reg reset;
  wire Q;
  wire clk_slw;
  initial 
    begin
        D=1;
        reset=1; #50;
        reset =0;
    end
    always
    #100 D=~D;
 FF_with_clk_div_clg_g ff_test(reset ,D,Q ,clk_slw);
endmodule 