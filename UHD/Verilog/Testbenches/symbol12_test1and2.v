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
module symbol12_test1and2;

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


//	// Sample num: 0
//	#2
//	data_in = -206;

//	// Sample num: 1
//	#2
//	data_in = -216;

//	// Sample num: 2
//	#2
//	data_in = -221;

//	// Sample num: 3
//	#2
//	data_in = -225;

//	// Sample num: 4
//	#2
//	data_in = -230;

//	// Sample num: 5
//	#2
//	data_in = -232;

//	// Sample num: 6
//	#2
//	data_in = -240;

//	// Sample num: 7
//	#2
//	data_in = -244;

//	// Sample num: 8
//	#2
//	data_in = -256;

//	// Sample num: 9
//	#2
//	data_in = -256;

//	// Sample num: 10
//	#2
//	data_in = -261;

//	// Sample num: 11
//	#2
//	data_in = -273;

//	// Sample num: 12
//	#2
//	data_in = -268;

//	// Sample num: 13
//	#2
//	data_in = -269;

//	// Sample num: 14
//	#2
//	data_in = -272;

//	// Sample num: 15
//	#2
//	data_in = -275;

//	// Sample num: 16
//	#2
//	data_in = -279;

//	// Sample num: 17
//	#2
//	data_in = -278;

//	// Sample num: 18
//	#2
//	data_in = -282;

//	// Sample num: 19
//	#2
//	data_in = -285;

//	// Sample num: 20
//	#2
//	data_in = -287;

//	// Sample num: 21
//	#2
//	data_in = -285;

//	// Sample num: 22
//	#2
//	data_in = -280;

//	// Sample num: 23
//	#2
//	data_in = -285;

//	// Sample num: 24
//	#2
//	data_in = -288;

//	// Sample num: 25
//	#2
//	data_in = -290;

//	// Sample num: 26
//	#2
//	data_in = -296;

//	// Sample num: 27
//	#2
//	data_in = -286;

//	// Sample num: 28
//	#2
//	data_in = -280;

//	// Sample num: 29
//	#2
//	data_in = -282;

//	// Sample num: 30
//	#2
//	data_in = -281;

//	// Sample num: 31
//	#2
//	data_in = -279;

//	// Sample num: 32
//	#2
//	data_in = -281;

//	// Sample num: 33
//	#2
//	data_in = -285;

//	// Sample num: 34
//	#2
//	data_in = -275;

//	// Sample num: 35
//	#2
//	data_in = -270;

//	// Sample num: 36
//	#2
//	data_in = -267;

//	// Sample num: 37
//	#2
//	data_in = -260;

//	// Sample num: 38
//	#2
//	data_in = -260;

//	// Sample num: 39
//	#2
//	data_in = -253;

//	// Sample num: 40
//	#2
//	data_in = -253;

//	// Sample num: 41
//	#2
//	data_in = -253;

//	// Sample num: 42
//	#2
//	data_in = -245;

//	// Sample num: 43
//	#2
//	data_in = -242;

//	// Sample num: 44
//	#2
//	data_in = -235;

//	// Sample num: 45
//	#2
//	data_in = -228;

//	// Sample num: 46
//	#2
//	data_in = -216;

//	// Sample num: 47
//	#2
//	data_in = -211;

//	// Sample num: 48
//	#2
//	data_in = -207;

//	// Sample num: 49
//	#2
//	data_in = -201;

//	// Sample num: 50
//	#2
//	data_in = -193;

//	// Sample num: 51
//	#2
//	data_in = -189;

//	// Sample num: 52
//	#2
//	data_in = -182;

//	// Sample num: 53
//	#2
//	data_in = -170;

//	// Sample num: 54
//	#2
//	data_in = -160;

//	// Sample num: 55
//	#2
//	data_in = -150;

//	// Sample num: 56
//	#2
//	data_in = -141;

//	// Sample num: 57
//	#2
//	data_in = -134;

//	// Sample num: 58
//	#2
//	data_in = -125;

//	// Sample num: 59
//	#2
//	data_in = -116;

//	// Sample num: 60
//	#2
//	data_in = -112;

//	// Sample num: 61
//	#2
//	data_in = -104;

//	// Sample num: 62
//	#2
//	data_in = -96;

//	// Sample num: 63
//	#2
//	data_in = -85;

//	// Sample num: 64
//	#2
//	data_in = -75;

//	// Sample num: 65
//	#2
//	data_in = -64;

//	// Sample num: 66
//	#2
//	data_in = -58;

//	// Sample num: 67
//	#2
//	data_in = -41;

//	// Sample num: 68
//	#2
//	data_in = -32;

//	// Sample num: 69
//	#2
//	data_in = -25;

//	// Sample num: 70
//	#2
//	data_in = -17;

//	// Sample num: 71
//	#2
//	data_in = -8;

//	// Sample num: 72
//	#2
//	data_in = 11;

//	// Sample num: 73
//	#2
//	data_in = 14;

//	// Sample num: 74
//	#2
//	data_in = 25;

//	// Sample num: 75
//	#2
//	data_in = 37;

//	// Sample num: 76
//	#2
//	data_in = 47;

//	// Sample num: 77
//	#2
//	data_in = 61;

//	// Sample num: 78
//	#2
//	data_in = 72;

//	// Sample num: 79
//	#2
//	data_in = 88;

//	// Sample num: 80
//	#2
//	data_in = 96;

//	// Sample num: 81
//	#2
//	data_in = 104;

//	// Sample num: 82
//	#2
//	data_in = 120;

//	// Sample num: 83
//	#2
//	data_in = 132;

//	// Sample num: 84
//	#2
//	data_in = 137;

//	// Sample num: 85
//	#2
//	data_in = 147;

//	// Sample num: 86
//	#2
//	data_in = 160;

//	// Sample num: 87
//	#2
//	data_in = 160;

//	// Sample num: 88
//	#2
//	data_in = 171;

//	// Sample num: 89
//	#2
//	data_in = 190;

//	// Sample num: 90
//	#2
//	data_in = 202;

//	// Sample num: 91
//	#2
//	data_in = 211;

//	// Sample num: 92
//	#2
//	data_in = 220;

//	// Sample num: 93
//	#2
//	data_in = 234;

//	// Sample num: 94
//	#2
//	data_in = 244;

//	// Sample num: 95
//	#2
//	data_in = 247;

//	// Sample num: 96
//	#2
//	data_in = 258;

//	// Sample num: 97
//	#2
//	data_in = 243;

//	// Sample num: 98
//	#2
//	data_in = 195;

//	// Sample num: 99
//	#2
//	data_in = 134;

//	// Sample num: 100
//	#2
//	data_in = 56;

//	// Sample num: 101
//	#2
//	data_in = 1;

//	// Sample num: 102
//	#2
//	data_in = -13;

//	// Sample num: 103
//	#2
//	data_in = -18;

//	// Sample num: 104
//	#2
//	data_in = -17;

//	// Sample num: 105
//	#2
//	data_in = -1;

//	// Sample num: 106
//	#2
//	data_in = -2;

//	// Sample num: 107
//	#2
//	data_in = -3;

//	// Sample num: 108
//	#2
//	data_in = 3;

//	// Sample num: 109
//	#2
//	data_in = -1;

//	// Sample num: 110
//	#2
//	data_in = -6;

//	// Sample num: 111
//	#2
//	data_in = -1;

//	// Sample num: 112
//	#2
//	data_in = 0;

//	// Sample num: 113
//	#2
//	data_in = -7;

//	// Sample num: 114
//	#2
//	data_in = 0;

//	// Sample num: 115
//	#2
//	data_in = -3;

//	// Sample num: 116
//	#2
//	data_in = -4;

//	// Sample num: 117
//	#2
//	data_in = -2;

//	// Sample num: 118
//	#2
//	data_in = -1;

//	// Sample num: 119
//	#2
//	data_in = -6;

//	// Sample num: 120
//	#2
//	data_in = -4;

//	// Sample num: 121
//	#2
//	data_in = -5;

//	// Sample num: 122
//	#2
//	data_in = -6;

//	// Sample num: 123
//	#2
//	data_in = -4;

//	// Sample num: 124
//	#2
//	data_in = 2;

//	// Sample num: 125
//	#2
//	data_in = 0;

//	// Sample num: 126
//	#2
//	data_in = -1;

//	// Sample num: 127
//	#2
//	data_in = -6;

//	// Sample num: 128
//	#2
//	data_in = -7;

//	// Sample num: 129
//	#2
//	data_in = -11;

//	// Sample num: 130
//	#2
//	data_in = -11;

//	// Sample num: 131
//	#2
//	data_in = -1;

//	// Sample num: 132
//	#2
//	data_in = -3;

//	// Sample num: 133
//	#2
//	data_in = -4;

//	// Sample num: 134
//	#2
//	data_in = -2;

//	// Sample num: 135
//	#2
//	data_in = -1;

//	// Sample num: 136
//	#2
//	data_in = -8;

//	// Sample num: 137
//	#2
//	data_in = -6;

//	// Sample num: 138
//	#2
//	data_in = 0;

//	// Sample num: 139
//	#2
//	data_in = 3;

//	// Sample num: 140
//	#2
//	data_in = 8;

//	// Sample num: 141
//	#2
//	data_in = 10;

//	// Sample num: 142
//	#2
//	data_in = 2;

//	// Sample num: 143
//	#2
//	data_in = -2;

//	// Sample num: 144
//	#2
//	data_in = -3;

//	// Sample num: 145
//	#2
//	data_in = 17;

//	// Sample num: 146
//	#2
//	data_in = 81;

//	// Sample num: 147
//	#2
//	data_in = 164;

//	// Sample num: 148
//	#2
//	data_in = 233;

//	// Sample num: 149
//	#2
//	data_in = 277;

//	// Sample num: 150
//	#2
//	data_in = 291;

//	// Sample num: 151
//	#2
//	data_in = 289;

//	// Sample num: 152
//	#2
//	data_in = 273;

//	// Sample num: 153
//	#2
//	data_in = 251;

//	// Sample num: 154
//	#2
//	data_in = 227;

//	// Sample num: 155
//	#2
//	data_in = 211;

//	// Sample num: 156
//	#2
//	data_in = 200;

//	// Sample num: 157
//	#2
//	data_in = 187;

//	// Sample num: 158
//	#2
//	data_in = 174;

//	// Sample num: 159
//	#2
//	data_in = 165;

//	// Sample num: 160
//	#2
//	data_in = 156;

//	// Sample num: 161
//	#2
//	data_in = 146;

//	// Sample num: 162
//	#2
//	data_in = 127;

//	// Sample num: 163
//	#2
//	data_in = 116;

//	// Sample num: 164
//	#2
//	data_in = 102;

//	// Sample num: 165
//	#2
//	data_in = 88;

//	// Sample num: 166
//	#2
//	data_in = 74;

//	// Sample num: 167
//	#2
//	data_in = 64;

//	// Sample num: 168
//	#2
//	data_in = 45;

//	// Sample num: 169
//	#2
//	data_in = 29;

//	// Sample num: 170
//	#2
//	data_in = 18;

//	// Sample num: 171
//	#2
//	data_in = 3;

//	// Sample num: 172
//	#2
//	data_in = -5;

//	// Sample num: 173
//	#2
//	data_in = -20;

//	// Sample num: 174
//	#2
//	data_in = -37;

//	// Sample num: 175
//	#2
//	data_in = -53;

//	// Sample num: 176
//	#2
//	data_in = -66;

//	// Sample num: 177
//	#2
//	data_in = -77;

//	// Sample num: 178
//	#2
//	data_in = -94;

//	// Sample num: 179
//	#2
//	data_in = -115;

//	// Sample num: 180
//	#2
//	data_in = -132;

//	// Sample num: 181
//	#2
//	data_in = -138;

//	// Sample num: 182
//	#2
//	data_in = -151;

//	// Sample num: 183
//	#2
//	data_in = -170;

//	// Sample num: 184
//	#2
//	data_in = -177;

//	// Sample num: 185
//	#2
//	data_in = -190;

//	// Sample num: 186
//	#2
//	data_in = -202;

//	// Sample num: 187
//	#2
//	data_in = -227;

//	// Sample num: 188
//	#2
//	data_in = -239;

//	// Sample num: 189
//	#2
//	data_in = -249;

//	// Sample num: 190
//	#2
//	data_in = -263;

//	// Sample num: 191
//	#2
//	data_in = -271;

//	// Sample num: 192
//	#2
//	data_in = -280;

//	// Sample num: 193
//	#2
//	data_in = -295;

//	// Sample num: 194
//	#2
//	data_in = -306;

//	// Sample num: 195
//	#2
//	data_in = -321;

//	// Sample num: 196
//	#2
//	data_in = -331;

//	// Sample num: 197
//	#2
//	data_in = -338;

//	// Sample num: 198
//	#2
//	data_in = -351;

//	// Sample num: 199
//	#2
//	data_in = -367;

//	// Sample num: 200
//	#2
//	data_in = -372;

//	// Sample num: 201
//	#2
//	data_in = -373;

//	// Sample num: 202
//	#2
//	data_in = -390;

//	// Sample num: 203
//	#2
//	data_in = -397;

//	// Sample num: 204
//	#2
//	data_in = -405;

//	// Sample num: 205
//	#2
//	data_in = -415;

//	// Sample num: 206
//	#2
//	data_in = -423;

//	// Sample num: 207
//	#2
//	data_in = -429;

//	// Sample num: 208
//	#2
//	data_in = -436;

//	// Sample num: 209
//	#2
//	data_in = -442;

//	// Sample num: 210
//	#2
//	data_in = -446;

//	// Sample num: 211
//	#2
//	data_in = -452;

//	// Sample num: 212
//	#2
//	data_in = -459;

//	// Sample num: 213
//	#2
//	data_in = -464;

//	// Sample num: 214
//	#2
//	data_in = -468;

//	// Sample num: 215
//	#2
//	data_in = -477;

//	// Sample num: 216
//	#2
//	data_in = -473;

//	// Sample num: 217
//	#2
//	data_in = -474;

//	// Sample num: 218
//	#2
//	data_in = -476;

//	// Sample num: 219
//	#2
//	data_in = -472;

//	// Sample num: 220
//	#2
//	data_in = -481;

//	// Sample num: 221
//	#2
//	data_in = -481;

//	// Sample num: 222
//	#2
//	data_in = -486;

//	// Sample num: 223
//	#2
//	data_in = -490;

//	// Sample num: 224
//	#2
//	data_in = -490;

//	// Sample num: 225
//	#2
//	data_in = -484;

//	// Sample num: 226
//	#2
//	data_in = -477;

//	// Sample num: 227
//	#2
//	data_in = -477;

//	// Sample num: 228
//	#2
//	data_in = -470;

//	// Sample num: 229
//	#2
//	data_in = -465;

//	// Sample num: 230
//	#2
//	data_in = -460;

//	// Sample num: 231
//	#2
//	data_in = -454;

//	// Sample num: 232
//	#2
//	data_in = -445;

//	// Sample num: 233
//	#2
//	data_in = -447;

//	// Sample num: 234
//	#2
//	data_in = -439;

//	// Sample num: 235
//	#2
//	data_in = -424;

//	// Sample num: 236
//	#2
//	data_in = -424;

//	// Sample num: 237
//	#2
//	data_in = -419;

//	// Sample num: 238
//	#2
//	data_in = -408;

//	// Sample num: 239
//	#2
//	data_in = -398;

//	// Sample num: 240
//	#2
//	data_in = -390;

//	// Sample num: 241
//	#2
//	data_in = -389;

//	// Sample num: 242
//	#2
//	data_in = -375;

//	// Sample num: 243
//	#2
//	data_in = -369;

//	// Sample num: 244
//	#2
//	data_in = -358;

//	// Sample num: 245
//	#2
//	data_in = -349;

//	// Sample num: 246
//	#2
//	data_in = -338;

//	// Sample num: 247
//	#2
//	data_in = -333;

//	// Sample num: 248
//	#2
//	data_in = -313;

//	// Sample num: 249
//	#2
//	data_in = -302;

//	// Sample num: 250
//	#2
//	data_in = -296;

//	// Sample num: 251
//	#2
//	data_in = -278;

//	// Sample num: 252
//	#2
//	data_in = -260;

//	// Sample num: 253
//	#2
//	data_in = -248;

//	// Sample num: 254
//	#2
//	data_in = -241;

//	// Sample num: 255
//	#2
//	data_in = -220;

//	// Sample num: 256
//	#2
//	data_in = -208;

//	// Sample num: 257
//	#2
//	data_in = -190;

//	// Sample num: 258
//	#2
//	data_in = -182;

//	// Sample num: 259
//	#2
//	data_in = -167;

//	// Sample num: 260
//	#2
//	data_in = -149;

//	// Sample num: 261
//	#2
//	data_in = -135;

//	// Sample num: 262
//	#2
//	data_in = -117;

//	// Sample num: 263
//	#2
//	data_in = -104;

//	// Sample num: 264
//	#2
//	data_in = -89;

//	// Sample num: 265
//	#2
//	data_in = -69;

//	// Sample num: 266
//	#2
//	data_in = -55;

//	// Sample num: 267
//	#2
//	data_in = -43;

//	// Sample num: 268
//	#2
//	data_in = -29;

//	// Sample num: 269
//	#2
//	data_in = -16;

//	// Sample num: 270
//	#2
//	data_in = 0;

//	// Sample num: 271
//	#2
//	data_in = 12;

//	// Sample num: 272
//	#2
//	data_in = 29;

//	// Sample num: 273
//	#2
//	data_in = 53;

//	// Sample num: 274
//	#2
//	data_in = 60;

//	// Sample num: 275
//	#2
//	data_in = 76;

//	// Sample num: 276
//	#2
//	data_in = 88;

//	// Sample num: 277
//	#2
//	data_in = 107;

//	// Sample num: 278
//	#2
//	data_in = 120;

//	// Sample num: 279
//	#2
//	data_in = 130;

//	// Sample num: 280
//	#2
//	data_in = 147;

//	// Sample num: 281
//	#2
//	data_in = 160;

//	// Sample num: 282
//	#2
//	data_in = 179;

//	// Sample num: 283
//	#2
//	data_in = 191;

//	// Sample num: 284
//	#2
//	data_in = 200;

//	// Sample num: 285
//	#2
//	data_in = 214;

//	// Sample num: 286
//	#2
//	data_in = 225;

//	// Sample num: 287
//	#2
//	data_in = 240;

//	// Sample num: 288
//	#2
//	data_in = 253;

//	// Sample num: 289
//	#2
//	data_in = 260;

//	// Sample num: 290
//	#2
//	data_in = 268;

//	// Sample num: 291
//	#2
//	data_in = 279;

//	// Sample num: 292
//	#2
//	data_in = 300;

//	// Sample num: 293
//	#2
//	data_in = 315;

//	// Sample num: 294
//	#2
//	data_in = 324;

//	// Sample num: 295
//	#2
//	data_in = 330;

//	// Sample num: 296
//	#2
//	data_in = 339;

//	// Sample num: 297
//	#2
//	data_in = 343;

//	// Sample num: 298
//	#2
//	data_in = 347;

//	// Sample num: 299
//	#2
//	data_in = 356;

//	// Sample num: 300
//	#2
//	data_in = 363;

//	// Sample num: 301
//	#2
//	data_in = 372;

//	// Sample num: 302
//	#2
//	data_in = 384;

//	// Sample num: 303
//	#2
//	data_in = 398;

//	// Sample num: 304
//	#2
//	data_in = 398;

//	// Sample num: 305
//	#2
//	data_in = 407;

//	// Sample num: 306
//	#2
//	data_in = 412;

//	// Sample num: 307
//	#2
//	data_in = 413;

//	// Sample num: 308
//	#2
//	data_in = 413;

//	// Sample num: 309
//	#2
//	data_in = 421;

//	// Sample num: 310
//	#2
//	data_in = 430;

//	// Sample num: 311
//	#2
//	data_in = 428;

//	// Sample num: 312
//	#2
//	data_in = 424;

//	// Sample num: 313
//	#2
//	data_in = 427;

//	// Sample num: 314
//	#2
//	data_in = 431;

//	// Sample num: 315
//	#2
//	data_in = 430;

//	// Sample num: 316
//	#2
//	data_in = 434;

//	// Sample num: 317
//	#2
//	data_in = 433;

//	// Sample num: 318
//	#2
//	data_in = 435;

//	// Sample num: 319
//	#2
//	data_in = 431;

//	// Sample num: 320
//	#2
//	data_in = 424;

//	// Sample num: 321
//	#2
//	data_in = 422;

//	// Sample num: 322
//	#2
//	data_in = 417;

//	// Sample num: 323
//	#2
//	data_in = 421;

//	// Sample num: 324
//	#2
//	data_in = 422;

//	// Sample num: 325
//	#2
//	data_in = 422;

//	// Sample num: 326
//	#2
//	data_in = 416;

//	// Sample num: 327
//	#2
//	data_in = 406;

//	// Sample num: 328
//	#2
//	data_in = 402;

//	// Sample num: 329
//	#2
//	data_in = 397;

//	// Sample num: 330
//	#2
//	data_in = 392;

//	// Sample num: 331
//	#2
//	data_in = 393;

//	// Sample num: 332
//	#2
//	data_in = 387;

//	// Sample num: 333
//	#2
//	data_in = 382;

//	// Sample num: 334
//	#2
//	data_in = 375;

//	// Sample num: 335
//	#2
//	data_in = 362;

//	// Sample num: 336
//	#2
//	data_in = 353;

//	// Sample num: 337
//	#2
//	data_in = 349;

//	// Sample num: 338
//	#2
//	data_in = 333;

//	// Sample num: 339
//	#2
//	data_in = 329;

//	// Sample num: 340
//	#2
//	data_in = 319;

//	// Sample num: 341
//	#2
//	data_in = 314;

//	// Sample num: 342
//	#2
//	data_in = 310;

//	// Sample num: 343
//	#2
//	data_in = 299;

//	// Sample num: 344
//	#2
//	data_in = 291;

//	// Sample num: 345
//	#2
//	data_in = 283;

//	// Sample num: 346
//	#2
//	data_in = 270;

//	// Sample num: 347
//	#2
//	data_in = 260;

//	// Sample num: 348
//	#2
//	data_in = 245;

//	// Sample num: 349
//	#2
//	data_in = 237;

//	// Sample num: 350
//	#2
//	data_in = 231;

//	// Sample num: 351
//	#2
//	data_in = 228;

//	// Sample num: 352
//	#2
//	data_in = 214;

//	// Sample num: 353
//	#2
//	data_in = 199;

//	// Sample num: 354
//	#2
//	data_in = 184;

//	// Sample num: 355
//	#2
//	data_in = 173;

//	// Sample num: 356
//	#2
//	data_in = 160;

//	// Sample num: 357
//	#2
//	data_in = 156;

//	// Sample num: 358
//	#2
//	data_in = 147;

//	// Sample num: 359
//	#2
//	data_in = 130;

//	// Sample num: 360
//	#2
//	data_in = 126;

//	// Sample num: 361
//	#2
//	data_in = 111;

//	// Sample num: 362
//	#2
//	data_in = 104;

//	// Sample num: 363
//	#2
//	data_in = 92;

//	// Sample num: 364
//	#2
//	data_in = 78;

//	// Sample num: 365
//	#2
//	data_in = 64;

//	// Sample num: 366
//	#2
//	data_in = 52;

//	// Sample num: 367
//	#2
//	data_in = 45;

//	// Sample num: 368
//	#2
//	data_in = 37;

//	// Sample num: 369
//	#2
//	data_in = 28;

//	// Sample num: 370
//	#2
//	data_in = 15;

//	// Sample num: 371
//	#2
//	data_in = 10;

//	// Sample num: 372
//	#2
//	data_in = -1;

//	// Sample num: 373
//	#2
//	data_in = -15;

//	// Sample num: 374
//	#2
//	data_in = -27;

//	// Sample num: 375
//	#2
//	data_in = -29;

//	// Sample num: 376
//	#2
//	data_in = -44;

//	// Sample num: 377
//	#2
//	data_in = -52;

//	// Sample num: 378
//	#2
//	data_in = -61;

//	// Sample num: 379
//	#2
//	data_in = -70;

//	// Sample num: 380
//	#2
//	data_in = -80;

//	// Sample num: 381
//	#2
//	data_in = -89;

//	// Sample num: 382
//	#2
//	data_in = -96;

//	// Sample num: 383
//	#2
//	data_in = -110;

//	// Sample num: 384
//	#2
//	data_in = -116;

//	// Sample num: 385
//	#2
//	data_in = -122;

//	// Sample num: 386
//	#2
//	data_in = -125;

//	// Sample num: 387
//	#2
//	data_in = -134;

//	// Sample num: 388
//	#2
//	data_in = -138;

//	// Sample num: 389
//	#2
//	data_in = -147;

//	// Sample num: 390
//	#2
//	data_in = -153;

//	// Sample num: 391
//	#2
//	data_in = -158;

//	// Sample num: 392
//	#2
//	data_in = -165;

//	// Sample num: 393
//	#2
//	data_in = -169;

//	// Sample num: 394
//	#2
//	data_in = -176;

//	// Sample num: 395
//	#2
//	data_in = -180;

//	// Sample num: 396
//	#2
//	data_in = -181;

//	// Sample num: 397
//	#2
//	data_in = -187;

//	// Sample num: 398
//	#2
//	data_in = -184;

//	// Sample num: 399
//	#2
//	data_in = -194;

	// Sample num: 400
	#2
	data_in = -198;

	// Sample num: 401
	#2
	data_in = -197;

	// Sample num: 402
	#2
	data_in = -203;

	// Sample num: 403
	#2
	data_in = -214;

	// Sample num: 404
	#2
	data_in = -216;

	// Sample num: 405
	#2
	data_in = -211;

	// Sample num: 406
	#2
	data_in = -216;

	// Sample num: 407
	#2
	data_in = -216;

	// Sample num: 408
	#2
	data_in = -213;

	// Sample num: 409
	#2
	data_in = -218;

	// Sample num: 410
	#2
	data_in = -219;

	// Sample num: 411
	#2
	data_in = -227;

	// Sample num: 412
	#2
	data_in = -227;

	// Sample num: 413
	#2
	data_in = -227;

	// Sample num: 414
	#2
	data_in = -215;

	// Sample num: 415
	#2
	data_in = -219;

	// Sample num: 416
	#2
	data_in = -219;

	// Sample num: 417
	#2
	data_in = -211;

	// Sample num: 418
	#2
	data_in = -219;

	// Sample num: 419
	#2
	data_in = -215;

	// Sample num: 420
	#2
	data_in = -211;

	// Sample num: 421
	#2
	data_in = -208;

	// Sample num: 422
	#2
	data_in = -209;

	// Sample num: 423
	#2
	data_in = -200;

	// Sample num: 424
	#2
	data_in = -200;

	// Sample num: 425
	#2
	data_in = -197;

	// Sample num: 426
	#2
	data_in = -192;

	// Sample num: 427
	#2
	data_in = -192;

	// Sample num: 428
	#2
	data_in = -188;

	// Sample num: 429
	#2
	data_in = -185;

	// Sample num: 430
	#2
	data_in = -175;

	// Sample num: 431
	#2
	data_in = -170;

	// Sample num: 432
	#2
	data_in = -172;

	// Sample num: 433
	#2
	data_in = -170;

	// Sample num: 434
	#2
	data_in = -162;

	// Sample num: 435
	#2
	data_in = -159;

	// Sample num: 436
	#2
	data_in = -154;

	// Sample num: 437
	#2
	data_in = -150;

	// Sample num: 438
	#2
	data_in = -146;

	// Sample num: 439
	#2
	data_in = -140;

	// Sample num: 440
	#2
	data_in = -133;

	// Sample num: 441
	#2
	data_in = -123;

	// Sample num: 442
	#2
	data_in = -121;

	// Sample num: 443
	#2
	data_in = -115;

	// Sample num: 444
	#2
	data_in = -114;

	// Sample num: 445
	#2
	data_in = -115;

	// Sample num: 446
	#2
	data_in = -104;

	// Sample num: 447
	#2
	data_in = -95;

	// Sample num: 448
	#2
	data_in = -88;

	// Sample num: 449
	#2
	data_in = -90;

	// Sample num: 450
	#2
	data_in = -80;

	// Sample num: 451
	#2
	data_in = -78;

	// Sample num: 452
	#2
	data_in = -76;

	// Sample num: 453
	#2
	data_in = -70;

	// Sample num: 454
	#2
	data_in = -62;

	// Sample num: 455
	#2
	data_in = -56;

	// Sample num: 456
	#2
	data_in = -53;

	// Sample num: 457
	#2
	data_in = -45;

	// Sample num: 458
	#2
	data_in = -45;

	// Sample num: 459
	#2
	data_in = -38;

	// Sample num: 460
	#2
	data_in = -32;

	// Sample num: 461
	#2
	data_in = -22;

	// Sample num: 462
	#2
	data_in = -24;

	// Sample num: 463
	#2
	data_in = -19;

	// Sample num: 464
	#2
	data_in = -16;

	// Sample num: 465
	#2
	data_in = -17;

	// Sample num: 466
	#2
	data_in = -9;

	// Sample num: 467
	#2
	data_in = -9;

	// Sample num: 468
	#2
	data_in = 2;

	// Sample num: 469
	#2
	data_in = 4;

	// Sample num: 470
	#2
	data_in = 5;

	// Sample num: 471
	#2
	data_in = 10;

	// Sample num: 472
	#2
	data_in = 17;

	// Sample num: 473
	#2
	data_in = 23;

	// Sample num: 474
	#2
	data_in = 25;

	// Sample num: 475
	#2
	data_in = 21;

	// Sample num: 476
	#2
	data_in = 22;

	// Sample num: 477
	#2
	data_in = 34;

	// Sample num: 478
	#2
	data_in = 35;

	// Sample num: 479
	#2
	data_in = 29;

	// Sample num: 480
	#2
	data_in = 37;

	// Sample num: 481
	#2
	data_in = 43;

	// Sample num: 482
	#2
	data_in = 44;

	// Sample num: 483
	#2
	data_in = 47;

	// Sample num: 484
	#2
	data_in = 45;

	// Sample num: 485
	#2
	data_in = 47;

	// Sample num: 486
	#2
	data_in = 44;

	// Sample num: 487
	#2
	data_in = 48;

	// Sample num: 488
	#2
	data_in = 52;

	// Sample num: 489
	#2
	data_in = 49;

	// Sample num: 490
	#2
	data_in = 44;

	// Sample num: 491
	#2
	data_in = 45;

	// Sample num: 492
	#2
	data_in = 42;

	// Sample num: 493
	#2
	data_in = 47;

	// Sample num: 494
	#2
	data_in = 55;

	// Sample num: 495
	#2
	data_in = 52;

	// Sample num: 496
	#2
	data_in = 57;

	// Sample num: 497
	#2
	data_in = 43;

	// Sample num: 498
	#2
	data_in = 37;

	// Sample num: 499
	#2
	data_in = 34;

	// Sample num: 500
	#2
	data_in = 20;

	// Sample num: 501
	#2
	data_in = 11;

	// Sample num: 502
	#2
	data_in = 4;

	// Sample num: 503
	#2
	data_in = 6;

	// Sample num: 504
	#2
	data_in = 11;

	// Sample num: 505
	#2
	data_in = 11;

	// Sample num: 506
	#2
	data_in = 12;

	// Sample num: 507
	#2
	data_in = 11;

	// Sample num: 508
	#2
	data_in = 7;

	// Sample num: 509
	#2
	data_in = 5;

	// Sample num: 510
	#2
	data_in = 0;

	// Sample num: 511
	#2
	data_in = 8;

	// Sample num: 512
	#2
	data_in = 10;

	// Sample num: 513
	#2
	data_in = 13;

	// Sample num: 514
	#2
	data_in = 10;

	// Sample num: 515
	#2
	data_in = 12;

	// Sample num: 516
	#2
	data_in = 10;

	// Sample num: 517
	#2
	data_in = 8;

	// Sample num: 518
	#2
	data_in = 3;

	// Sample num: 519
	#2
	data_in = 1;

	// Sample num: 520
	#2
	data_in = 1;

	// Sample num: 521
	#2
	data_in = 6;

	// Sample num: 522
	#2
	data_in = 0;

	// Sample num: 523
	#2
	data_in = 3;

	// Sample num: 524
	#2
	data_in = 5;

	// Sample num: 525
	#2
	data_in = 8;

	// Sample num: 526
	#2
	data_in = 10;

	// Sample num: 527
	#2
	data_in = 8;

	// Sample num: 528
	#2
	data_in = 3;

	// Sample num: 529
	#2
	data_in = 6;

	// Sample num: 530
	#2
	data_in = 8;

	// Sample num: 531
	#2
	data_in = 8;

	// Sample num: 532
	#2
	data_in = -1;

	// Sample num: 533
	#2
	data_in = 3;

	// Sample num: 534
	#2
	data_in = 8;

	// Sample num: 535
	#2
	data_in = 6;

	// Sample num: 536
	#2
	data_in = 10;

	// Sample num: 537
	#2
	data_in = 0;

	// Sample num: 538
	#2
	data_in = 5;

	// Sample num: 539
	#2
	data_in = 4;

	// Sample num: 540
	#2
	data_in = 12;

	// Sample num: 541
	#2
	data_in = 11;

	// Sample num: 542
	#2
	data_in = 14;

	// Sample num: 543
	#2
	data_in = 12;

	// Sample num: 544
	#2
	data_in = 13;

	// Sample num: 545
	#2
	data_in = 5;

	// Sample num: 546
	#2
	data_in = 2;

	// Sample num: 547
	#2
	data_in = -6;

	// Sample num: 548
	#2
	data_in = -17;

	// Sample num: 549
	#2
	data_in = -16;

	// Sample num: 550
	#2
	data_in = -21;

	// Sample num: 551
	#2
	data_in = -21;

	// Sample num: 552
	#2
	data_in = -29;

	// Sample num: 553
	#2
	data_in = -26;

	// Sample num: 554
	#2
	data_in = -25;

	// Sample num: 555
	#2
	data_in = -21;

	// Sample num: 556
	#2
	data_in = -18;

	// Sample num: 557
	#2
	data_in = -20;

	// Sample num: 558
	#2
	data_in = -16;

	// Sample num: 559
	#2
	data_in = -22;

	// Sample num: 560
	#2
	data_in = -18;

	// Sample num: 561
	#2
	data_in = -21;

	// Sample num: 562
	#2
	data_in = -18;

	// Sample num: 563
	#2
	data_in = -6;

	// Sample num: 564
	#2
	data_in = -10;

	// Sample num: 565
	#2
	data_in = -8;

	// Sample num: 566
	#2
	data_in = -5;

	// Sample num: 567
	#2
	data_in = -3;

	// Sample num: 568
	#2
	data_in = 2;

	// Sample num: 569
	#2
	data_in = 1;

	// Sample num: 570
	#2
	data_in = 7;

	// Sample num: 571
	#2
	data_in = 5;

	// Sample num: 572
	#2
	data_in = -3;

	// Sample num: 573
	#2
	data_in = 6;

	// Sample num: 574
	#2
	data_in = 11;

	// Sample num: 575
	#2
	data_in = 16;

	// Sample num: 576
	#2
	data_in = 21;

	// Sample num: 577
	#2
	data_in = 23;

	// Sample num: 578
	#2
	data_in = 26;

	// Sample num: 579
	#2
	data_in = 23;

	// Sample num: 580
	#2
	data_in = 28;

	// Sample num: 581
	#2
	data_in = 30;

	// Sample num: 582
	#2
	data_in = 36;

	// Sample num: 583
	#2
	data_in = 45;

	// Sample num: 584
	#2
	data_in = 47;

	// Sample num: 585
	#2
	data_in = 44;

	// Sample num: 586
	#2
	data_in = 46;

	// Sample num: 587
	#2
	data_in = 52;

	// Sample num: 588
	#2
	data_in = 53;

	// Sample num: 589
	#2
	data_in = 58;

	// Sample num: 590
	#2
	data_in = 64;

	// Sample num: 591
	#2
	data_in = 69;

	// Sample num: 592
	#2
	data_in = 72;

	// Sample num: 593
	#2
	data_in = 83;

	// Sample num: 594
	#2
	data_in = 95;

	// Sample num: 595
	#2
	data_in = 98;

	// Sample num: 596
	#2
	data_in = 102;

	// Sample num: 597
	#2
	data_in = 99;

	// Sample num: 598
	#2
	data_in = 102;

	// Sample num: 599
	#2
	data_in = 105;

	// Sample num: 600
	#2
	data_in = 112;

	// Sample num: 601
	#2
	data_in = 115;

//	// Sample num: 602
//	#2
//	data_in = 125;

//	// Sample num: 603
//	#2
//	data_in = 117;

//	// Sample num: 604
//	#2
//	data_in = 127;

//	// Sample num: 605
//	#2
//	data_in = 126;

//	// Sample num: 606
//	#2
//	data_in = 129;

//	// Sample num: 607
//	#2
//	data_in = 131;

//	// Sample num: 608
//	#2
//	data_in = 131;

//	// Sample num: 609
//	#2
//	data_in = 140;

//	// Sample num: 610
//	#2
//	data_in = 141;

//	// Sample num: 611
//	#2
//	data_in = 146;

//	// Sample num: 612
//	#2
//	data_in = 144;

//	// Sample num: 613
//	#2
//	data_in = 147;

//	// Sample num: 614
//	#2
//	data_in = 149;

//	// Sample num: 615
//	#2
//	data_in = 153;

//	// Sample num: 616
//	#2
//	data_in = 158;

//	// Sample num: 617
//	#2
//	data_in = 156;

//	// Sample num: 618
//	#2
//	data_in = 163;

//	// Sample num: 619
//	#2
//	data_in = 169;

//	// Sample num: 620
//	#2
//	data_in = 169;

//	// Sample num: 621
//	#2
//	data_in = 170;

//	// Sample num: 622
//	#2
//	data_in = 172;

//	// Sample num: 623
//	#2
//	data_in = 169;

//	// Sample num: 624
//	#2
//	data_in = 176;

//	// Sample num: 625
//	#2
//	data_in = 173;

//	// Sample num: 626
//	#2
//	data_in = 177;

//	// Sample num: 627
//	#2
//	data_in = 172;

//	// Sample num: 628
//	#2
//	data_in = 173;

//	// Sample num: 629
//	#2
//	data_in = 169;

//	// Sample num: 630
//	#2
//	data_in = 169;

//	// Sample num: 631
//	#2
//	data_in = 170;

//	// Sample num: 632
//	#2
//	data_in = 174;

//	// Sample num: 633
//	#2
//	data_in = 176;

//	// Sample num: 634
//	#2
//	data_in = 171;

//	// Sample num: 635
//	#2
//	data_in = 171;

//	// Sample num: 636
//	#2
//	data_in = 169;

//	// Sample num: 637
//	#2
//	data_in = 167;

//	// Sample num: 638
//	#2
//	data_in = 163;

//	// Sample num: 639
//	#2
//	data_in = 165;

//	// Sample num: 640
//	#2
//	data_in = 161;

//	// Sample num: 641
//	#2
//	data_in = 150;

//	// Sample num: 642
//	#2
//	data_in = 150;

//	// Sample num: 643
//	#2
//	data_in = 147;

//	// Sample num: 644
//	#2
//	data_in = 152;

//	// Sample num: 645
//	#2
//	data_in = 143;

//	// Sample num: 646
//	#2
//	data_in = 138;

//	// Sample num: 647
//	#2
//	data_in = 139;

//	// Sample num: 648
//	#2
//	data_in = 128;

//	// Sample num: 649
//	#2
//	data_in = 127;

//	// Sample num: 650
//	#2
//	data_in = 125;

//	// Sample num: 651
//	#2
//	data_in = 119;

//	// Sample num: 652
//	#2
//	data_in = 115;

//	// Sample num: 653
//	#2
//	data_in = 115;

//	// Sample num: 654
//	#2
//	data_in = 114;

//	// Sample num: 655
//	#2
//	data_in = 106;

//	// Sample num: 656
//	#2
//	data_in = 99;

//	// Sample num: 657
//	#2
//	data_in = 91;

//	// Sample num: 658
//	#2
//	data_in = 87;

//	// Sample num: 659
//	#2
//	data_in = 79;

//	// Sample num: 660
//	#2
//	data_in = 76;

//	// Sample num: 661
//	#2
//	data_in = 70;

//	// Sample num: 662
//	#2
//	data_in = 66;

//	// Sample num: 663
//	#2
//	data_in = 56;

//	// Sample num: 664
//	#2
//	data_in = 49;

//	// Sample num: 665
//	#2
//	data_in = 38;

//	// Sample num: 666
//	#2
//	data_in = 33;

//	// Sample num: 667
//	#2
//	data_in = 28;

//	// Sample num: 668
//	#2
//	data_in = 23;

//	// Sample num: 669
//	#2
//	data_in = 25;

//	// Sample num: 670
//	#2
//	data_in = 24;

//	// Sample num: 671
//	#2
//	data_in = 14;

//	// Sample num: 672
//	#2
//	data_in = 5;

//	// Sample num: 673
//	#2
//	data_in = -6;

//	// Sample num: 674
//	#2
//	data_in = -16;

//	// Sample num: 675
//	#2
//	data_in = -23;

//	// Sample num: 676
//	#2
//	data_in = -30;

//	// Sample num: 677
//	#2
//	data_in = -39;

//	// Sample num: 678
//	#2
//	data_in = -45;

//	// Sample num: 679
//	#2
//	data_in = -48;

//	// Sample num: 680
//	#2
//	data_in = -51;

//	// Sample num: 681
//	#2
//	data_in = -64;

//	// Sample num: 682
//	#2
//	data_in = -75;

//	// Sample num: 683
//	#2
//	data_in = -77;

//	// Sample num: 684
//	#2
//	data_in = -87;

//	// Sample num: 685
//	#2
//	data_in = -99;

//	// Sample num: 686
//	#2
//	data_in = -108;

//	// Sample num: 687
//	#2
//	data_in = -117;

//	// Sample num: 688
//	#2
//	data_in = -121;

//	// Sample num: 689
//	#2
//	data_in = -121;

//	// Sample num: 690
//	#2
//	data_in = -129;

//	// Sample num: 691
//	#2
//	data_in = -138;

//	// Sample num: 692
//	#2
//	data_in = -146;

//	// Sample num: 693
//	#2
//	data_in = -150;

//	// Sample num: 694
//	#2
//	data_in = -155;

//	// Sample num: 695
//	#2
//	data_in = -160;

//	// Sample num: 696
//	#2
//	data_in = -171;

//	// Sample num: 697
//	#2
//	data_in = -176;

//	// Sample num: 698
//	#2
//	data_in = -190;

//	// Sample num: 699
//	#2
//	data_in = -198;

//	// Sample num: 700
//	#2
//	data_in = -202;

//	// Sample num: 701
//	#2
//	data_in = -203;

//	// Sample num: 702
//	#2
//	data_in = -210;

//	// Sample num: 703
//	#2
//	data_in = -219;

//	// Sample num: 704
//	#2
//	data_in = -225;

//	// Sample num: 705
//	#2
//	data_in = -230;

//	// Sample num: 706
//	#2
//	data_in = -222;

//	// Sample num: 707
//	#2
//	data_in = -227;

//	// Sample num: 708
//	#2
//	data_in = -237;

//	// Sample num: 709
//	#2
//	data_in = -242;

//	// Sample num: 710
//	#2
//	data_in = -241;

//	// Sample num: 711
//	#2
//	data_in = -244;

//	// Sample num: 712
//	#2
//	data_in = -250;

//	// Sample num: 713
//	#2
//	data_in = -250;

//	// Sample num: 714
//	#2
//	data_in = -261;

//	// Sample num: 715
//	#2
//	data_in = -265;

//	// Sample num: 716
//	#2
//	data_in = -266;

//	// Sample num: 717
//	#2
//	data_in = -271;

//	// Sample num: 718
//	#2
//	data_in = -276;

//	// Sample num: 719
//	#2
//	data_in = -273;

//	// Sample num: 720
//	#2
//	data_in = -268;

//	// Sample num: 721
//	#2
//	data_in = -268;

//	// Sample num: 722
//	#2
//	data_in = -267;

//	// Sample num: 723
//	#2
//	data_in = -268;

//	// Sample num: 724
//	#2
//	data_in = -264;

//	// Sample num: 725
//	#2
//	data_in = -266;

//	// Sample num: 726
//	#2
//	data_in = -267;

//	// Sample num: 727
//	#2
//	data_in = -272;

//	// Sample num: 728
//	#2
//	data_in = -275;

//	// Sample num: 729
//	#2
//	data_in = -274;

//	// Sample num: 730
//	#2
//	data_in = -269;

//	// Sample num: 731
//	#2
//	data_in = -263;

//	// Sample num: 732
//	#2
//	data_in = -266;

//	// Sample num: 733
//	#2
//	data_in = -262;

//	// Sample num: 734
//	#2
//	data_in = -260;

//	// Sample num: 735
//	#2
//	data_in = -259;

//	// Sample num: 736
//	#2
//	data_in = -258;

//	// Sample num: 737
//	#2
//	data_in = -252;

//	// Sample num: 738
//	#2
//	data_in = -245;

//	// Sample num: 739
//	#2
//	data_in = -243;

//	// Sample num: 740
//	#2
//	data_in = -238;

//	// Sample num: 741
//	#2
//	data_in = -234;

//	// Sample num: 742
//	#2
//	data_in = -233;

//	// Sample num: 743
//	#2
//	data_in = -228;

//	// Sample num: 744
//	#2
//	data_in = -226;

//	// Sample num: 745
//	#2
//	data_in = -221;

//	// Sample num: 746
//	#2
//	data_in = -212;

//	// Sample num: 747
//	#2
//	data_in = -207;

//	// Sample num: 748
//	#2
//	data_in = -198;

//	// Sample num: 749
//	#2
//	data_in = -194;

//	// Sample num: 750
//	#2
//	data_in = -189;

//	// Sample num: 751
//	#2
//	data_in = -176;

//	// Sample num: 752
//	#2
//	data_in = -174;

//	// Sample num: 753
//	#2
//	data_in = -165;

//	// Sample num: 754
//	#2
//	data_in = -162;

//	// Sample num: 755
//	#2
//	data_in = -151;

//	// Sample num: 756
//	#2
//	data_in = -144;

//	// Sample num: 757
//	#2
//	data_in = -135;

//	// Sample num: 758
//	#2
//	data_in = -124;

//	// Sample num: 759
//	#2
//	data_in = -113;

//	// Sample num: 760
//	#2
//	data_in = -105;

//	// Sample num: 761
//	#2
//	data_in = -102;

//	// Sample num: 762
//	#2
//	data_in = -84;

//	// Sample num: 763
//	#2
//	data_in = -68;

//	// Sample num: 764
//	#2
//	data_in = -58;

//	// Sample num: 765
//	#2
//	data_in = -51;

//	// Sample num: 766
//	#2
//	data_in = -42;

//	// Sample num: 767
//	#2
//	data_in = -30;

//	// Sample num: 768
//	#2
//	data_in = -20;

//	// Sample num: 769
//	#2
//	data_in = -17;

//	// Sample num: 770
//	#2
//	data_in = -5;

//	// Sample num: 771
//	#2
//	data_in = 10;

//	// Sample num: 772
//	#2
//	data_in = 17;

//	// Sample num: 773
//	#2
//	data_in = 25;

//	// Sample num: 774
//	#2
//	data_in = 41;

//	// Sample num: 775
//	#2
//	data_in = 55;

//	// Sample num: 776
//	#2
//	data_in = 68;

//	// Sample num: 777
//	#2
//	data_in = 82;

//	// Sample num: 778
//	#2
//	data_in = 93;

//	// Sample num: 779
//	#2
//	data_in = 108;

//	// Sample num: 780
//	#2
//	data_in = 111;

//	// Sample num: 781
//	#2
//	data_in = 114;

//	// Sample num: 782
//	#2
//	data_in = 128;

//	// Sample num: 783
//	#2
//	data_in = 142;

//	// Sample num: 784
//	#2
//	data_in = 160;

//	// Sample num: 785
//	#2
//	data_in = 166;

//	// Sample num: 786
//	#2
//	data_in = 176;

//	// Sample num: 787
//	#2
//	data_in = 192;

//	// Sample num: 788
//	#2
//	data_in = 199;

//	// Sample num: 789
//	#2
//	data_in = 208;

//	// Sample num: 790
//	#2
//	data_in = 215;

//	// Sample num: 791
//	#2
//	data_in = 225;

//	// Sample num: 792
//	#2
//	data_in = 233;

//	// Sample num: 793
//	#2
//	data_in = 241;

//	// Sample num: 794
//	#2
//	data_in = 249;

//	// Sample num: 795
//	#2
//	data_in = 257;

//	// Sample num: 796
//	#2
//	data_in = 276;

//	// Sample num: 797
//	#2
//	data_in = 278;

//	// Sample num: 798
//	#2
//	data_in = 283;

//	// Sample num: 799
//	#2
//	data_in = 297;

//	// Sample num: 800
//	#2
//	data_in = 303;

//	// Sample num: 801
//	#2
//	data_in = 310;

//	// Sample num: 802
//	#2
//	data_in = 320;

//	// Sample num: 803
//	#2
//	data_in = 324;

//	// Sample num: 804
//	#2
//	data_in = 330;

//	// Sample num: 805
//	#2
//	data_in = 340;

//	// Sample num: 806
//	#2
//	data_in = 350;

//	// Sample num: 807
//	#2
//	data_in = 353;

//	// Sample num: 808
//	#2
//	data_in = 363;

//	// Sample num: 809
//	#2
//	data_in = 368;

//	// Sample num: 810
//	#2
//	data_in = 370;

//	// Sample num: 811
//	#2
//	data_in = 379;

//	// Sample num: 812
//	#2
//	data_in = 383;

//	// Sample num: 813
//	#2
//	data_in = 392;

//	// Sample num: 814
//	#2
//	data_in = 394;

//	// Sample num: 815
//	#2
//	data_in = 396;

//	// Sample num: 816
//	#2
//	data_in = 404;

//	// Sample num: 817
//	#2
//	data_in = 406;

//	// Sample num: 818
//	#2
//	data_in = 402;

//	// Sample num: 819
//	#2
//	data_in = 408;

//	// Sample num: 820
//	#2
//	data_in = 399;

//	// Sample num: 821
//	#2
//	data_in = 395;

//	// Sample num: 822
//	#2
//	data_in = 403;

//	// Sample num: 823
//	#2
//	data_in = 408;

//	// Sample num: 824
//	#2
//	data_in = 411;

//	// Sample num: 825
//	#2
//	data_in = 410;

//	// Sample num: 826
//	#2
//	data_in = 412;

//	// Sample num: 827
//	#2
//	data_in = 411;

//	// Sample num: 828
//	#2
//	data_in = 402;

//	// Sample num: 829
//	#2
//	data_in = 401;

//	// Sample num: 830
//	#2
//	data_in = 401;

//	// Sample num: 831
//	#2
//	data_in = 398;

//	// Sample num: 832
//	#2
//	data_in = 392;

//	// Sample num: 833
//	#2
//	data_in = 385;

//	// Sample num: 834
//	#2
//	data_in = 381;

//	// Sample num: 835
//	#2
//	data_in = 387;

//	// Sample num: 836
//	#2
//	data_in = 376;

//	// Sample num: 837
//	#2
//	data_in = 374;

//	// Sample num: 838
//	#2
//	data_in = 366;

//	// Sample num: 839
//	#2
//	data_in = 359;

//	// Sample num: 840
//	#2
//	data_in = 356;

//	// Sample num: 841
//	#2
//	data_in = 343;

//	// Sample num: 842
//	#2
//	data_in = 346;

//	// Sample num: 843
//	#2
//	data_in = 330;

//	// Sample num: 844
//	#2
//	data_in = 330;

//	// Sample num: 845
//	#2
//	data_in = 320;

//	// Sample num: 846
//	#2
//	data_in = 309;

//	// Sample num: 847
//	#2
//	data_in = 299;

//	// Sample num: 848
//	#2
//	data_in = 285;

//	// Sample num: 849
//	#2
//	data_in = 276;

//	// Sample num: 850
//	#2
//	data_in = 269;

//	// Sample num: 851
//	#2
//	data_in = 251;

//	// Sample num: 852
//	#2
//	data_in = 247;

//	// Sample num: 853
//	#2
//	data_in = 237;

//	// Sample num: 854
//	#2
//	data_in = 228;

//	// Sample num: 855
//	#2
//	data_in = 213;

//	// Sample num: 856
//	#2
//	data_in = 202;

//	// Sample num: 857
//	#2
//	data_in = 189;

//	// Sample num: 858
//	#2
//	data_in = 176;

//	// Sample num: 859
//	#2
//	data_in = 166;

//	// Sample num: 860
//	#2
//	data_in = 151;

//	// Sample num: 861
//	#2
//	data_in = 137;

//	// Sample num: 862
//	#2
//	data_in = 128;

//	// Sample num: 863
//	#2
//	data_in = 114;

//	// Sample num: 864
//	#2
//	data_in = 101;

//	// Sample num: 865
//	#2
//	data_in = 90;

//	// Sample num: 866
//	#2
//	data_in = 72;

//	// Sample num: 867
//	#2
//	data_in = 53;

//	// Sample num: 868
//	#2
//	data_in = 41;

//	// Sample num: 869
//	#2
//	data_in = 27;

//	// Sample num: 870
//	#2
//	data_in = 13;

//	// Sample num: 871
//	#2
//	data_in = 1;

//	// Sample num: 872
//	#2
//	data_in = -13;

//	// Sample num: 873
//	#2
//	data_in = -31;

//	// Sample num: 874
//	#2
//	data_in = -43;

//	// Sample num: 875
//	#2
//	data_in = -53;

//	// Sample num: 876
//	#2
//	data_in = -71;

//	// Sample num: 877
//	#2
//	data_in = -90;

//	// Sample num: 878
//	#2
//	data_in = -95;

//	// Sample num: 879
//	#2
//	data_in = -109;

//	// Sample num: 880
//	#2
//	data_in = -126;

//	// Sample num: 881
//	#2
//	data_in = -144;

//	// Sample num: 882
//	#2
//	data_in = -159;

//	// Sample num: 883
//	#2
//	data_in = -176;

//	// Sample num: 884
//	#2
//	data_in = -179;

//	// Sample num: 885
//	#2
//	data_in = -194;

//	// Sample num: 886
//	#2
//	data_in = -214;

//	// Sample num: 887
//	#2
//	data_in = -224;

//	// Sample num: 888
//	#2
//	data_in = -241;

//	// Sample num: 889
//	#2
//	data_in = -250;

//	// Sample num: 890
//	#2
//	data_in = -262;

//	// Sample num: 891
//	#2
//	data_in = -269;

//	// Sample num: 892
//	#2
//	data_in = -280;

//	// Sample num: 893
//	#2
//	data_in = -292;

//	// Sample num: 894
//	#2
//	data_in = -309;

//	// Sample num: 895
//	#2
//	data_in = -323;

//	// Sample num: 896
//	#2
//	data_in = -337;

//	// Sample num: 897
//	#2
//	data_in = -323;

//	// Sample num: 898
//	#2
//	data_in = -258;

//	// Sample num: 899
//	#2
//	data_in = -161;

//	// Sample num: 900
//	#2
//	data_in = -73;

//	// Sample num: 901
//	#2
//	data_in = -8;

//	// Sample num: 902
//	#2
//	data_in = 22;

//	// Sample num: 903
//	#2
//	data_in = 27;

//	// Sample num: 904
//	#2
//	data_in = 27;

//	// Sample num: 905
//	#2
//	data_in = 13;

//	// Sample num: 906
//	#2
//	data_in = -6;

//	// Sample num: 907
//	#2
//	data_in = 0;

//	// Sample num: 908
//	#2
//	data_in = 0;

//	// Sample num: 909
//	#2
//	data_in = -6;

//	// Sample num: 910
//	#2
//	data_in = -8;

//	// Sample num: 911
//	#2
//	data_in = -4;

//	// Sample num: 912
//	#2
//	data_in = -3;

//	// Sample num: 913
//	#2
//	data_in = -2;

//	// Sample num: 914
//	#2
//	data_in = 2;

//	// Sample num: 915
//	#2
//	data_in = 6;

//	// Sample num: 916
//	#2
//	data_in = 6;

//	// Sample num: 917
//	#2
//	data_in = 2;

//	// Sample num: 918
//	#2
//	data_in = 1;

//	// Sample num: 919
//	#2
//	data_in = -2;

//	// Sample num: 920
//	#2
//	data_in = -6;

//	// Sample num: 921
//	#2
//	data_in = -7;

//	// Sample num: 922
//	#2
//	data_in = -6;

//	// Sample num: 923
//	#2
//	data_in = -3;

//	// Sample num: 924
//	#2
//	data_in = 3;

//	// Sample num: 925
//	#2
//	data_in = 1;

//	// Sample num: 926
//	#2
//	data_in = 1;

//	// Sample num: 927
//	#2
//	data_in = 0;

//	// Sample num: 928
//	#2
//	data_in = 4;

//	// Sample num: 929
//	#2
//	data_in = -2;

//	// Sample num: 930
//	#2
//	data_in = -5;

//	// Sample num: 931
//	#2
//	data_in = -2;

//	// Sample num: 932
//	#2
//	data_in = -9;

//	// Sample num: 933
//	#2
//	data_in = -6;

//	// Sample num: 934
//	#2
//	data_in = 0;

//	// Sample num: 935
//	#2
//	data_in = -11;

//	// Sample num: 936
//	#2
//	data_in = -5;

//	// Sample num: 937
//	#2
//	data_in = 0;

//	// Sample num: 938
//	#2
//	data_in = 2;

//	// Sample num: 939
//	#2
//	data_in = 2;

//	// Sample num: 940
//	#2
//	data_in = 2;

//	// Sample num: 941
//	#2
//	data_in = -6;

//	// Sample num: 942
//	#2
//	data_in = -5;

//	// Sample num: 943
//	#2
//	data_in = -8;

//	// Sample num: 944
//	#2
//	data_in = -6;

//	// Sample num: 945
//	#2
//	data_in = -26;

//	// Sample num: 946
//	#2
//	data_in = -98;

//	// Sample num: 947
//	#2
//	data_in = -185;

//	// Sample num: 948
//	#2
//	data_in = -274;

//	// Sample num: 949
//	#2
//	data_in = -318;

//	// Sample num: 950
//	#2
//	data_in = -337;

//	// Sample num: 951
//	#2
//	data_in = -332;

//	// Sample num: 952
//	#2
//	data_in = -309;

//	// Sample num: 953
//	#2
//	data_in = -275;

//	// Sample num: 954
//	#2
//	data_in = -247;

//	// Sample num: 955
//	#2
//	data_in = -229;

//	// Sample num: 956
//	#2
//	data_in = -215;

//	// Sample num: 957
//	#2
//	data_in = -202;

//	// Sample num: 958
//	#2
//	data_in = -194;

//	// Sample num: 959
//	#2
//	data_in = -185;

//	// Sample num: 960
//	#2
//	data_in = -172;

//	// Sample num: 961
//	#2
//	data_in = -163;

//	// Sample num: 962
//	#2
//	data_in = -142;

//	// Sample num: 963
//	#2
//	data_in = -124;

//	// Sample num: 964
//	#2
//	data_in = -111;

//	// Sample num: 965
//	#2
//	data_in = -93;

//	// Sample num: 966
//	#2
//	data_in = -81;

//	// Sample num: 967
//	#2
//	data_in = -61;

//	// Sample num: 968
//	#2
//	data_in = -52;

//	// Sample num: 969
//	#2
//	data_in = -39;

//	// Sample num: 970
//	#2
//	data_in = -24;

//	// Sample num: 971
//	#2
//	data_in = -8;

//	// Sample num: 972
//	#2
//	data_in = 9;

//	// Sample num: 973
//	#2
//	data_in = 25;

//	// Sample num: 974
//	#2
//	data_in = 39;

//	// Sample num: 975
//	#2
//	data_in = 52;

//	// Sample num: 976
//	#2
//	data_in = 66;

//	// Sample num: 977
//	#2
//	data_in = 82;

//	// Sample num: 978
//	#2
//	data_in = 100;

//	// Sample num: 979
//	#2
//	data_in = 105;

//	// Sample num: 980
//	#2
//	data_in = 120;

//	// Sample num: 981
//	#2
//	data_in = 134;

//	// Sample num: 982
//	#2
//	data_in = 151;

//	// Sample num: 983
//	#2
//	data_in = 169;

//	// Sample num: 984
//	#2
//	data_in = 179;

//	// Sample num: 985
//	#2
//	data_in = 195;

//	// Sample num: 986
//	#2
//	data_in = 203;

//	// Sample num: 987
//	#2
//	data_in = 214;

//	// Sample num: 988
//	#2
//	data_in = 225;

//	// Sample num: 989
//	#2
//	data_in = 239;

//	// Sample num: 990
//	#2
//	data_in = 254;

//	// Sample num: 991
//	#2
//	data_in = 260;

//	// Sample num: 992
//	#2
//	data_in = 276;

//	// Sample num: 993
//	#2
//	data_in = 286;

//	// Sample num: 994
//	#2
//	data_in = 294;

//	// Sample num: 995
//	#2
//	data_in = 306;

//	// Sample num: 996
//	#2
//	data_in = 315;

//	// Sample num: 997
//	#2
//	data_in = 332;

//	// Sample num: 998
//	#2
//	data_in = 336;

//	// Sample num: 999
//	#2
//	data_in = 337;

	#2 $finish;
end


///////////////////////////////////////////	
  
  always begin
    // toggle
    #1 clock = ~clock ;
  end
endmodule
