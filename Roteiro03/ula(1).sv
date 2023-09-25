module ULA(input logic signed [7:0] A, B,
           input logic [1:0] F,
           output logic FLAG_O,
           output logic signed [7:0]Saida);
  
  always_comb begin
    case(F)
      2'b00: begin
        Saida <= A & B;
        FLAG_O <= 0;
      end
      2'b01: begin
        Saida <= A | B;
        FLAG_O <= 0;
      end
      2'b10: begin
        Saida <= A + B;
        if(A>0 && B>0 && Saida<0 || A<0 && B<0 && Saida>0) FLAG_O <= 1;
        else FLAG_O <= 0;
      end
      2'b11: begin 
      	Saida <= A - B;
        if(A>0 && B<0 && Saida<0 || A<0 && B<0 && Saida>0) FLAG_O <= 1;
        else FLAG_O <= 0;
      end
    endcase
    
  end
  
endmodule