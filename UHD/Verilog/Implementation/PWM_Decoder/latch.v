`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: FDIBA @ TU Sofia
// Engineer:  Varban Metodiev
// 
// Create Date:    11:24:59 09/22/2019 
// Design Name: 
// Module Name:    latch 
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
module latch(
		trigger_out ,
		data_in ,
		data_out
    );

 	//-------- Input ports --------
	input wire trigger_out ;
	input wire signed [7:0] data_in ;
	 
	//-------- Output ports/regs --------
	output reg signed [7:0] data_out ;
  
	//-------- Behaviour --------		
	always @ (posedge trigger_out)
	begin : LATCH
	  data_out <= data_in ;
	end

endmodule
