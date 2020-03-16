`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: FDIBA @ TU Sofia
// Engineer: Varban Metodiev
// 
// Create Date:    19:35:27 09/19/2019 
// Design Name: 
// Module Name:    subtractor 
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
module subtractor(
		clock ,
		input_one ,
		input_two ,
		result
	 );

	//-------- Registers --------
	 
	// ...

	//-------- Input ports --------
	input wire clock ;
	input wire signed [15:0] input_one ;
	input wire signed [15:0] input_two ;	
		
	//-------- Output ports --------
	output reg signed [15:0] result ;
		
	//-------- Behaviour --------		
	always @ (posedge clock) 
	begin : SUBTRACTOR
		result <= input_one - input_two;
	end

endmodule
