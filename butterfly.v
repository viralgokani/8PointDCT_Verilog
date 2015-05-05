module butterfly(
    output reg [31:0] sum,diff,                                           // 32-bit output registers to store sum and difference
    input [31:0] x,y,                                                     // 32-bit input nets x and y
    input en                                                              // To enable the operation of butterfly
    );

always @(en or x or y)
begin
  sum=x+y;
  diff=x-y;
end
endmodule
