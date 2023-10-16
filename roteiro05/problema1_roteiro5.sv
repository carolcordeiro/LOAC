parameter NBITS_COUNT = 4;

module contador_up_down(
	input logic clk, reset, load, count_up, count_on,
  	input logic [NBITS_COUNT-1:0] data_in,
  	output logic [NBITS_COUNT-1:0] count);
  
  always_ff @(posedge reset or posedge clk) begin
    if(reset)
      count <= 0;
    else if (load)
      count <= data_in;
    else if (count_on) begin 
      if(count_up)
        count <= count+1;
      else 
        count <= count-1;
    end 
  end
                 
endmodule