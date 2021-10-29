module seq(input logic clk,rst);
  logic [2:0] state;
  always_ff @(posedge clk,posedge rst) begin
    if (rst) state <= 3'b100; else begin
      state[2]<=1'b0;
      state[1]<=state[2];
      state[0]<=state[1] | state[0];
    end
  end
endmodule