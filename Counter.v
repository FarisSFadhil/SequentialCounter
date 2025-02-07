`timescale 1ns/100ps
// Up Down counter with clear 
// The counter counts at the rising edge of the clock line

module Counter(
  input CLK,
  input UD,
  output reg [3:0] Count,
  input Clear
  );
  
 	always @(Clear)
 	if (Clear == 0)
   		Count = 4'b0000;            // Clear (async)
   		
 	always @(posedge CLK)
 	case ({UD,Clear})               
   		2'b01 : Count = Count-1;     // Count Down
   		2'b11 : Count = Count+1;     // Count Up
  	endcase
endmodule


