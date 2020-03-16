`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: FDIBA @ TU Sofia
// Engineer:  Varban Metodiev
// 
// Create Date:    17:57:57 09/19/2019 
// Design Name: 
// Module Name:    two_stage_buffer 
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
module two_stage_buffer(
		clock ,      // The clock
		data_in ,    // 16-bit data input 
		current_out,
		prev_out
	 );

	//-------- Registers --------
	reg signed [15:0] data_in_reg ;
	reg signed [15:0] one_step_delay ;

	//-------- Input ports --------
	input wire clock ;
	input wire signed [15:0] data_in ;
		
	//-------- Output ports --------
	output reg signed [15:0] current_out ;
	output reg signed [15:0] prev_out ;
		
	//-------- Behaviour --------		
	always @ (posedge clock)
	begin : TWO_STAGE_BUFFER // module name
		current_out <= data_in ;
		one_step_delay <= current_out ;
		prev_out <= one_step_delay ;
	end
	
endmodule
