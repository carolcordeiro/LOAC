module gerador_paridade(
  	input logic B0,B1,B2,B3,B4,B5,B6,B7,
	output logic BIT);
	
  	always_comb  BIT <= (B0 ^ B1 ^ B2 ^ B3 ^ B4 ^ B5 ^ B6 ^ B7);
  
endmodule