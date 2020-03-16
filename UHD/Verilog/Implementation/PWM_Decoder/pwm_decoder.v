`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: FDIBA @ TU Sofia
// Engineer:  Varban Metodiev
// 
// Create Date:    12:38:23 09/22/2019 
// Design Name: 
// Module Name:    pwm_decoder 
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
module pwm_decoder(
		clock ,
		enable_counter ,
		ref_in ,
		data_in ,
		decoded_symbol
    );

 	//-------- Input ports --------
	input wire clock ;
	input wire enable_counter ;
	
	input wire signed [15:0] ref_in ;
	input wire signed [15:0] data_in ;
	 
	//-------- Output ports/regs --------
	output wire signed [7:0] decoded_symbol ;

	//-------- Module interconnection --------
	wire signed [15:0] current ;
	wire signed [15:0] prev ; 
	wire signed [15:0] result_subtract ;
	wire signed [7:0] counter_out ; 
	wire latch ;
	wire counter_reset ;
		
	two_stage_buffer two_stage_buffer_instance(
		.clock(clock) ,      
		.data_in(data_in) ,
		.current_out(current) ,
		.prev_out(prev)
	) ;
	
	subtractor subtractor_instance(
		.clock(clock) ,
		.input_one(current) ,
		.input_two(prev) ,
		.result(result_subtract)
	) ;
	
	control_unit control_unit_instance(
		.clock(clock) ,
		.subtracted_in(result_subtract) ,
		.ref_in(ref_in) ,
		.counter_reset(counter_reset) ,
		.result_latch(latch)
	);

	simple_counter simple_counter_instance(
		.clock(clock) , 
		.reset(counter_reset) , 
		.enable(enable_counter) , 
		.counter_out(counter_out)
	);
	
	latch latch_instance(
		.trigger_out(latch) ,
		.data_in(counter_out) ,
		.data_out(decoded_symbol)
	);
	
endmodule
