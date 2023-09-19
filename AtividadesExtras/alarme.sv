// Write your modules here!
module alarme(input logic J1, J2, J3, J4, J5, J6,
              output logic saida_alarme);
  always_comb saida_alarme <= (J1 | J2 | J3 | J4 | J5 | J6);
endmodule