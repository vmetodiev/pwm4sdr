`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Varban Metodiev @ FDIBA, Technical University of Sofia
// 
// Create Date: 
// Design Name: 
// Module Name:  
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
module symbol9_test1;

 	//-------- Input ports --------
	reg clock ;
	reg enable_counter ;
	reg signed [15:0] ref_in ;
	reg signed [15:0] data_in ;

	//-------- Output ports/regs --------
	wire signed [7:0] decoded_symbol ;
	
	decoder_top uut(
		.clock(clock) ,
		.enable_counter(enable_counter) ,
		.ref_in(ref_in) ,
		.data_in(data_in) ,
		.decoded_symbol(decoded_symbol)
    );
	
	initial begin
	
	  clock = 0 ;
	  enable_counter = 1'b1 ;
	  ref_in = 95 ;
	  data_in = 0 ;
	  
///////////////////////////////////////////

	// Wait a bit
	#10


	// Sample num: 0
	#2
	data_in = 266;

	// Sample num: 1
	#2
	data_in = 272;

	// Sample num: 2
	#2
	data_in = 271;

	// Sample num: 3
	#2
	data_in = 273;

	// Sample num: 4
	#2
	data_in = 265;

	// Sample num: 5
	#2
	data_in = 260;

	// Sample num: 6
	#2
	data_in = 255;

	// Sample num: 7
	#2
	data_in = 254;

	// Sample num: 8
	#2
	data_in = 249;

	// Sample num: 9
	#2
	data_in = 243;

	// Sample num: 10
	#2
	data_in = 241;

	// Sample num: 11
	#2
	data_in = 236;

	// Sample num: 12
	#2
	data_in = 228;

	// Sample num: 13
	#2
	data_in = 230;

	// Sample num: 14
	#2
	data_in = 232;

	// Sample num: 15
	#2
	data_in = 231;

	// Sample num: 16
	#2
	data_in = 217;

	// Sample num: 17
	#2
	data_in = 214;

	// Sample num: 18
	#2
	data_in = 204;

	// Sample num: 19
	#2
	data_in = 196;

	// Sample num: 20
	#2
	data_in = 193;

	// Sample num: 21
	#2
	data_in = 189;

	// Sample num: 22
	#2
	data_in = 182;

	// Sample num: 23
	#2
	data_in = 179;

	// Sample num: 24
	#2
	data_in = 170;

	// Sample num: 25
	#2
	data_in = 158;

	// Sample num: 26
	#2
	data_in = 156;

	// Sample num: 27
	#2
	data_in = 149;

	// Sample num: 28
	#2
	data_in = 142;

	// Sample num: 29
	#2
	data_in = 136;

	// Sample num: 30
	#2
	data_in = 130;

	// Sample num: 31
	#2
	data_in = 118;

	// Sample num: 32
	#2
	data_in = 114;

	// Sample num: 33
	#2
	data_in = 103;

	// Sample num: 34
	#2
	data_in = 96;

	// Sample num: 35
	#2
	data_in = 84;

	// Sample num: 36
	#2
	data_in = 79;

	// Sample num: 37
	#2
	data_in = 75;

	// Sample num: 38
	#2
	data_in = 73;

	// Sample num: 39
	#2
	data_in = 65;

	// Sample num: 40
	#2
	data_in = 59;

	// Sample num: 41
	#2
	data_in = 53;

	// Sample num: 42
	#2
	data_in = 46;

	// Sample num: 43
	#2
	data_in = 36;

	// Sample num: 44
	#2
	data_in = 31;

	// Sample num: 45
	#2
	data_in = 25;

	// Sample num: 46
	#2
	data_in = 12;

	// Sample num: 47
	#2
	data_in = 11;

	// Sample num: 48
	#2
	data_in = 0;

	// Sample num: 49
	#2
	data_in = 0;

	// Sample num: 50
	#2
	data_in = -7;

	// Sample num: 51
	#2
	data_in = -12;

	// Sample num: 52
	#2
	data_in = -15;

	// Sample num: 53
	#2
	data_in = -27;

	// Sample num: 54
	#2
	data_in = -39;

	// Sample num: 55
	#2
	data_in = -44;

	// Sample num: 56
	#2
	data_in = -46;

	// Sample num: 57
	#2
	data_in = -58;

	// Sample num: 58
	#2
	data_in = -57;

	// Sample num: 59
	#2
	data_in = -63;

	// Sample num: 60
	#2
	data_in = -67;

	// Sample num: 61
	#2
	data_in = -75;

	// Sample num: 62
	#2
	data_in = -85;

	// Sample num: 63
	#2
	data_in = -84;

	// Sample num: 64
	#2
	data_in = -89;

	// Sample num: 65
	#2
	data_in = -89;

	// Sample num: 66
	#2
	data_in = -96;

	// Sample num: 67
	#2
	data_in = -97;

	// Sample num: 68
	#2
	data_in = -101;

	// Sample num: 69
	#2
	data_in = -110;

	// Sample num: 70
	#2
	data_in = -116;

	// Sample num: 71
	#2
	data_in = -130;

	// Sample num: 72
	#2
	data_in = -126;

	// Sample num: 73
	#2
	data_in = -123;

	// Sample num: 74
	#2
	data_in = -133;

	// Sample num: 75
	#2
	data_in = -133;

	// Sample num: 76
	#2
	data_in = -136;

	// Sample num: 77
	#2
	data_in = -136;

	// Sample num: 78
	#2
	data_in = -121;

	// Sample num: 79
	#2
	data_in = -95;

	// Sample num: 80
	#2
	data_in = -62;

	// Sample num: 81
	#2
	data_in = -23;

	// Sample num: 82
	#2
	data_in = -6;

	// Sample num: 83
	#2
	data_in = 5;

	// Sample num: 84
	#2
	data_in = 4;

	// Sample num: 85
	#2
	data_in = -2;

	// Sample num: 86
	#2
	data_in = -6;

	// Sample num: 87
	#2
	data_in = -4;

	// Sample num: 88
	#2
	data_in = -6;

	// Sample num: 89
	#2
	data_in = -2;

	// Sample num: 90
	#2
	data_in = -8;

	// Sample num: 91
	#2
	data_in = -9;

	// Sample num: 92
	#2
	data_in = -13;

	// Sample num: 93
	#2
	data_in = -12;

	// Sample num: 94
	#2
	data_in = -7;

	// Sample num: 95
	#2
	data_in = -9;

	// Sample num: 96
	#2
	data_in = -4;

	// Sample num: 97
	#2
	data_in = -2;

	// Sample num: 98
	#2
	data_in = -5;

	// Sample num: 99
	#2
	data_in = -8;

	// Sample num: 100
	#2
	data_in = -7;

	// Sample num: 101
	#2
	data_in = -6;

	// Sample num: 102
	#2
	data_in = -10;

	// Sample num: 103
	#2
	data_in = -8;

	// Sample num: 104
	#2
	data_in = -12;

	// Sample num: 105
	#2
	data_in = -15;

	// Sample num: 106
	#2
	data_in = -12;

	// Sample num: 107
	#2
	data_in = -16;

	// Sample num: 108
	#2
	data_in = -12;

	// Sample num: 109
	#2
	data_in = -15;

	// Sample num: 110
	#2
	data_in = -13;

	// Sample num: 111
	#2
	data_in = -11;

	// Sample num: 112
	#2
	data_in = -7;

	// Sample num: 113
	#2
	data_in = -10;

	// Sample num: 114
	#2
	data_in = -10;

	// Sample num: 115
	#2
	data_in = -6;

	// Sample num: 116
	#2
	data_in = -16;

	// Sample num: 117
	#2
	data_in = -11;

	// Sample num: 118
	#2
	data_in = -12;

	// Sample num: 119
	#2
	data_in = -2;

	// Sample num: 120
	#2
	data_in = -20;

	// Sample num: 121
	#2
	data_in = -42;

	// Sample num: 122
	#2
	data_in = -55;

	// Sample num: 123
	#2
	data_in = -77;

	// Sample num: 124
	#2
	data_in = -84;

	// Sample num: 125
	#2
	data_in = -86;

	// Sample num: 126
	#2
	data_in = -80;

	// Sample num: 127
	#2
	data_in = -80;

	// Sample num: 128
	#2
	data_in = -74;

	// Sample num: 129
	#2
	data_in = -62;

	// Sample num: 130
	#2
	data_in = -61;

	// Sample num: 131
	#2
	data_in = -59;

	// Sample num: 132
	#2
	data_in = -58;

	// Sample num: 133
	#2
	data_in = -61;

	// Sample num: 134
	#2
	data_in = -52;

	// Sample num: 135
	#2
	data_in = -40;

	// Sample num: 136
	#2
	data_in = -38;

	// Sample num: 137
	#2
	data_in = -33;

	// Sample num: 138
	#2
	data_in = -30;

	// Sample num: 139
	#2
	data_in = -32;

	// Sample num: 140
	#2
	data_in = -31;

	// Sample num: 141
	#2
	data_in = -28;

	// Sample num: 142
	#2
	data_in = -26;

	// Sample num: 143
	#2
	data_in = -23;

	// Sample num: 144
	#2
	data_in = -21;

	// Sample num: 145
	#2
	data_in = -18;

	// Sample num: 146
	#2
	data_in = -20;

	// Sample num: 147
	#2
	data_in = -14;

	// Sample num: 148
	#2
	data_in = -8;

	// Sample num: 149
	#2
	data_in = -1;

	// Sample num: 150
	#2
	data_in = -8;

	// Sample num: 151
	#2
	data_in = -4;

	// Sample num: 152
	#2
	data_in = -1;

	// Sample num: 153
	#2
	data_in = -2;

	// Sample num: 154
	#2
	data_in = 1;

	// Sample num: 155
	#2
	data_in = -1;

	// Sample num: 156
	#2
	data_in = 0;

	// Sample num: 157
	#2
	data_in = 4;

	// Sample num: 158
	#2
	data_in = 10;

	// Sample num: 159
	#2
	data_in = 13;

	// Sample num: 160
	#2
	data_in = 16;

	// Sample num: 161
	#2
	data_in = 11;

	// Sample num: 162
	#2
	data_in = 5;

	// Sample num: 163
	#2
	data_in = 10;

	// Sample num: 164
	#2
	data_in = 10;

	// Sample num: 165
	#2
	data_in = 16;

	// Sample num: 166
	#2
	data_in = 14;

	// Sample num: 167
	#2
	data_in = 8;

	// Sample num: 168
	#2
	data_in = 14;

	// Sample num: 169
	#2
	data_in = 17;

	// Sample num: 170
	#2
	data_in = 17;

	// Sample num: 171
	#2
	data_in = 15;

	// Sample num: 172
	#2
	data_in = 16;

	// Sample num: 173
	#2
	data_in = 17;

	// Sample num: 174
	#2
	data_in = 14;

	// Sample num: 175
	#2
	data_in = 20;

	// Sample num: 176
	#2
	data_in = 9;

	// Sample num: 177
	#2
	data_in = 15;

	// Sample num: 178
	#2
	data_in = 12;

	// Sample num: 179
	#2
	data_in = 10;

	// Sample num: 180
	#2
	data_in = 12;

	// Sample num: 181
	#2
	data_in = 8;

	// Sample num: 182
	#2
	data_in = 7;

	// Sample num: 183
	#2
	data_in = 7;

	// Sample num: 184
	#2
	data_in = 12;

	// Sample num: 185
	#2
	data_in = 12;

	// Sample num: 186
	#2
	data_in = 6;

	// Sample num: 187
	#2
	data_in = 4;

	// Sample num: 188
	#2
	data_in = 2;

	// Sample num: 189
	#2
	data_in = 4;

	// Sample num: 190
	#2
	data_in = 6;

	// Sample num: 191
	#2
	data_in = 7;

	// Sample num: 192
	#2
	data_in = -1;

	// Sample num: 193
	#2
	data_in = 10;

	// Sample num: 194
	#2
	data_in = 0;

	// Sample num: 195
	#2
	data_in = 2;

	// Sample num: 196
	#2
	data_in = -3;

	// Sample num: 197
	#2
	data_in = -5;

	// Sample num: 198
	#2
	data_in = 0;

	// Sample num: 199
	#2
	data_in = -3;

	#2 $finish;
end


///////////////////////////////////////////	
  
  always begin
    // toggle
    #1 clock = ~clock ;
  end
endmodule
