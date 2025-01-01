

module mydesign 
 (
 input [7:0] A,
 input [7:0] B,
 input [7:0] C,
 input [2:0] i,
 input [2:0] j,
 output  [15:0] F
 );
wire [7:0]Ar , Br , E;

 ShiftRight rs(A , i , Ar);
 ShiftLeft sl(B , j , Br);
  Adder a1 (E , Ar , Br);
  mul m1 (E , C , F);


endmodule
