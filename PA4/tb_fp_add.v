`timescale 1 ns / 100 ps


module tb_fp_add();


    reg [31:0] op1, op2;
	 wire [31:0] result;
    
	 floatingPointAdd tb_ADD(.op_a(op1), .op_b(op2), .result(result));
    
    initial begin
		  // 0 + 0 = 0 (0x00000000)
	     op1 = 32'b00000000_00000000_00000000_00000000;
        op2 = 32'b00000000_00000000_00000000_00000000; 
        #10;
		  
		  // 1 + 1 = 2 (0x40000000)
		  op1 = 32'b00111111_10000000_00000000_00000000; 
        op2 = 32'b00111111_10000000_00000000_00000000; 
        #10;
		  
		  // - 1 - 1 = - 2 (0xc0000000)
		  op1 = 32'b10111111_10000000_00000000_00000000;
		  op2 = 32'b10111111_10000000_00000000_00000000;
		  #10;
		  
		  // 1.5 + 3.25 = 4.75 (0x40980000)
        op1 = 32'b00111111_11000000_00000000_00000000; 
        op2 = 32'b01000000_01010000_00000000_00000000; 
        #10;
		  
		  // - 1.5 - 3.25 = - 4.75 (0xc0980000)
		  op1 = 32'b10111111_11000000_00000000_00000000;
		  op2 = 32'b11000000_01010000_00000000_00000000;
		  #10;
		  
		  // 19.75 + 8.90625 = 28.65625 (0x41e54000)
		  op1 = 32'b01000001_10011110_00000000_00000000;
		  op2 = 32'b01000001_00001110_10000000_00000000;
		  #10;
		  
		  // 9.16075629071e+28 + 2.87301221031e+27 = 9.44805751174e+28 (0x6f98a440)
		  op1 = 32'b01101111_10010100_00000000_00000000;
		  op2 = 32'b01101101_00010100_10001000_00000000;
		  #10;
		  
		  // - 0.000192642211914 - 0.04931640625 = - 0.0495090485 (0xbd4aca00)
		  op1 = 32'b10111001_01001010_00000000_00000000;
		  op2 = 32'b10111101_01001010_00000000_00000000;
		  #10;
		  
		  // 6000.98881435 + 2985616.1346316 = 2991617.12344 (0x4a369804)
		  op1 = 32'b01000101_10111011_10000111_11101001;
		  op2 = 32'b01001010_00110110_00111010_01000001;
		  #10;
    end
endmodule