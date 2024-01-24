module Docoder_7_seg(A,B,C,D, leds[0], leds[1] , leds[2] ,leds[3] , leds[4] , leds[5] , leds[6] );
  input A,B,C,D;
  output [6:0] leds;
assign 
   leds[0] = ~(A | C | B&D | ~B&~D), //led a
   leds[1] = ~(~B | ~C&~D | C&D),// led b
   leds[2] = ~(B | ~C | D), //led c
   leds[3] = ~(~B&~D | C&~D | B&~C&D | ~B&C |A), //led d
   leds[4] = ~(~B&~D | C&~D), //led e
   leds[5] = ~(A | ~C&~D | B&~C | B&~D), //led f
   leds[6] = ~(A | B&~C | ~B&C | C&~D); //led g

endmodule