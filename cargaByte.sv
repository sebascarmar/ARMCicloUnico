module cargaByte(input logic [31:0] rd,
				input logic Byte,
				output logic [31:0] rdPostCargaByte);
				
always_comb
	if(Byte)
		rdPostCargaByte = {{24{rd[7]}},rd[7:0]};
	else
		rdPostCargaByte = rd;

endmodule
