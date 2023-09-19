module semaforoDuplo(input logic A, B, C,
                     output logic VDA, VMA, VDB, VMB, VDC, VMC);
    always_comb VDA <= (!B & !C) | (A & B);
    always_comb VMA <= !VDA;
    always_comb VDB <= !A & B;
    always_comb VMB <= !VDB;
    always_comb VDC <= !B & C;
    always_comb VMC <= !VDC;
endmodule