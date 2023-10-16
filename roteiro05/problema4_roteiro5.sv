parameter size = 3;
module detector_mensagem(
	input clk, in_bit, reset,
	output S);
  
  enum logic [size-1:0] {A, B, C, D, E} state;
  
  always_ff @ (posedge clk)
    if (reset) state <= A;
  	else
      unique case (state)
        A:
          if (in_bit == 0)
            state <= A;
          else 
          	state <= B;
        B:
          if (in_bit == 0)
            state <= A;
          else 
          	state <= C;
        C:
          if (in_bit == 0)
            state <= A;
          else 
          	state <= D;
        D:
          if (in_bit == 0)
            state <= A;
          else 
          	state <= E;
        E: state <= A;
      endcase
  always_comb S <= (state == E);
endmodule