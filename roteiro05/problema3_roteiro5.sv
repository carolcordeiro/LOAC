parameter NBITS = 3;
module semaforo_simples(
	input logic clk, reset,
  	output logic [NBITS-1:0] saida);
  
  //VERDE = 001 ; AMARELO = 010 ; VERMELHO = 100
  always_ff @(posedge clk) begin
    if(reset)
      saida <= 1;
    else
      if(saida[NBITS-1]) saida <= 1;
      else saida <= saida<<1;
  end
    
endmodule