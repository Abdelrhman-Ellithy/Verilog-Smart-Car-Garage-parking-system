module flag_7_seg ( A, B,C,D,E,F, leds[0], leds[1] , leds[2] ,leds[3] , leds[4] , leds[5] , leds[6] );
  
  input A, B,C,D,E,F ;
  output [6:0]leds;
      assign
   leds[0] = 0 ,        // led a
   leds[1] = (A&B&E) | (~(A|B|C|D|E|F)),       // led b
   leds[2] = (A&B&E) | (~(A|B|C|D|E|F)) ,        // led c
   leds[3] = A|B|C|D|E|F,     // led d
   leds[4] = 0 ,        // led e
   leds[5] = 0 ,        // led f
   leds[6] = 0 ;         // led g
endmodule
//110010
//ABCDEF
//0000000