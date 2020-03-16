`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: FDIBA @ TU Sofia
// Engineer: Varban Metodiev
// 
// Create Date:    18:31:20 01/16/2019 
// Design Name: 
// Module Name:    simple_counter 
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
module simple_counter(
		clock , // Clock input of the design
		reset , // active high, synch. reset input
		enable , // active high, enable signal for counter
		counter_out // 7-bit vector output of the design
    );
	
	//-------- Input ports --------
	input clock ;
	input reset ;
	input enable ;

	//-------- Output ports -------
	output [7:0] counter_out ;
	
	//-------- Input ports Data Type --------
	// By rule all the input ports should be wires   
	wire clock ;
	wire reset ;
	wire enable ;

	//-------- Output ports Data Type --------
	reg [7:0] counter_out ;

	// Code Starts here
	always @ (posedge clock)
	begin : COUNTER // block name is 'COUNTER'
		// At every rising edge we check if reset is active
		// If active, we load the counter output with 4'b0000
		if ( reset == 1'b1 ) begin
			counter_out <= 8'b00000000;
		end
		else if ( enable == 1'b1 ) begin
			counter_out <= counter_out + 1;
		end
	end
endmodule
