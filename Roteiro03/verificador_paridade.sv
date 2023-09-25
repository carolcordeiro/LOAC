module verificador_paridade(
  	input logic B0, B1, B2, B3, B4, B5, B6, B7, BITP,
	output logic ERRO);
  
    always_comb  ERRO <= (B0 ^ B1 ^ B2 ^ B3 ^ B4 ^ B5 ^ B6 ^ B7 ^ BITP);
  
endmodule