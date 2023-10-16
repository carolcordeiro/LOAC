parameter NBITS_COUNT = 9;

module camera_vigilancia(
	input logic clk, reset, 
  	output logic [NBITS_COUNT-1:0] saida);
  
  always_ff @(posedge clk) begin
    if(reset)	//funciona como reset e inicializador do circuito 
      saida <= 7; 
    else begin
      unique case (saida)
        7:   saida <= 56;
        56:  saida <= 448;
        448: saida <= 7;
      endcase
    end
  end
      
endmodule