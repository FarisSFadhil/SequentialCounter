`timescale 1ns/100ps

module CounterTesting();
  reg  CLK,UD,Clear;
  wire [3:0] Count;
  Counter C1(CLK,UD,Count,Clear);
  
  initial CLK = 0; 
  always #5 CLK = ~CLK; 
  
  initial
    begin 
            Clear = 0; UD = 1;
       #7   Clear = 1; 
       #72 Clear = 0;
       #5  Clear = 1; 
       #25	  UD = 0;
  end
  
initial
  $monitor ("UD = %b, CLR = %b, COUNT = %b ",UD,Clear,Count);
          
initial
#150 $finish;

endmodule

