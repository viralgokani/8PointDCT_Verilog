module signed_mult(
  input [7:0]a,                         // Multiplicend 1
  input [7:0]b,                         // Multiplicend 2
  output reg [15:0]y                    // Result
  );
  
  reg [15:0]temp;
  reg [7:0]p;
  reg [7:0]q;
  reg m;
 
  always@(a or b)
  begin
  case({a[7],b[7]})
  2'b00:begin
		  y=a*b;
		  y=y>>6;
		  end  
		  
  2'b01:begin
        q=(~b)+1;
		  temp=a*q;
		  y=(~temp)+1;
		  end
		  
  2'b10:begin
        p=(~a)+1;
		  temp=p*b;
		  temp=temp>>6;
		  y=(~temp)+1;
		  end
		  
  2'b11:begin
        q=(~b)+1;
		  p=(~a)+1;
		  temp=p*q;
		  y=temp;
		  end	  
   default:begin
		  y=a*b;
		  end  
  
  endcase
  end


endmodule

