`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: FDIBA @ TU Sofia
// Engineer:  Varban Metodiev
// 
// Create Date:    13:34:48 09/21/2019 
// Design Name: 
// Module Name:    control_unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module control_unit(
		clock ,
		subtracted_in ,
		ref_in ,
		counter_reset ,
		result_latch
    );

	//-------- Input ports --------
	input wire clock ;
	input wire signed [15:0] subtracted_in ;
	input wire signed [15:0] ref_in ;
		
	//-------- Output ports/regs --------
	output reg counter_reset ;
	output reg result_latch ;

   //-------- Output initialization --------
	initial counter_reset = 1'b0 ;
	initial result_latch = 1'b0 ;

	//-------- Registers --------
	reg signed [15:0] subtracted_in_reg ;
	reg signed [15:0] ref_in_reg ;
	
	//-------- Behaviour --------		
	always @ (posedge clock) 
	begin : CONTROL_UNIT
		  
	  if ( result_latch == 1'b1 ) // check if the latch up, set it to down
	    begin
			result_latch <= 1'b0 ;
		 end
		 
	  if ( counter_reset == 1'b1 ) // check if the reset flag up, set it to down
       begin
  	      counter_reset <= 1'b0 ;
       end
	  
	  subtracted_in_reg <= subtracted_in ;
	  ref_in_reg <= ref_in ;
	  	  
	  if ( subtracted_in_reg < 0 )
		 begin
		   if ( subtracted_in_reg + ref_in_reg < 0 )
			  begin
			    // A falling slope, start counting
			    counter_reset <= 1'b1 ;
			  end
		 end

	  else // if ( subtracted_in_reg > 0 )
	    begin
			if ( subtracted_in_reg - ref_in_reg > 0 )
			  begin					
			    // A rising slope, trigger the latch to show the result
				 result_latch <= 1'b1 ;
			  end
		 end 

	end

endmodule
