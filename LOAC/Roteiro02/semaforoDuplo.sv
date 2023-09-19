module semaforoDuplo(input logic A, B,
                     output logic VDA, VMA, VDB, VMB);
    always_comb VDA <= A;
    always_comb VMA <= !VDA;
    always_comb VDB <= !A;
    always_comb VMB <= A;
endmodule