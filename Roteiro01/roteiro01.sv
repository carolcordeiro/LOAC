// DEFINE DUAS PORTAS E O MOTOR COMO ENTRADAS, E O ALARME COMO SAIDA
module alarme(input logic P1, P2, M,
              output logic Alarme);
  always_comb Alarme <= (P1 | P2) & M; // QUANDO UMA PORTA OU A OUTRA ESTIVER ABERTA, E O MOTOR LIGADO
endmodule