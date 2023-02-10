
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module EE427_PA2_Part1(

	//////////// KEY //////////
	input 		     [3:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW
);



//=======================================================
//  REG/WIRE declarations
//=======================================================




//=======================================================
//  Structural coding
//=======================================================

counter #(.n(5), .k(20)) cnt(.Clock(KEY[0]), .Q(LEDR[4:0]), .rollover(LEDR[9]), .Reset_n(SW[9]));

endmodule