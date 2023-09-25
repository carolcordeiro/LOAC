module REGISTRADOR(
    input logic clk, reset,
  	input logic Din_serie, sel,
  	input logic [3:0] Din, 
    output logic [3:0]Dout);

    always_ff @(posedge reset or posedge clk) begin
        if(reset) 
        	Dout <= 0;
        else if (sel) 
          	Dout <= {Din_serie , Dout[3:1]};
      	else
           	Dout <= Din;    
    end
  
endmodule